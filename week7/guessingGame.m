% A number guessing game.  Part 2. 
% Example code for SE4003 week7
% Topics illustrated:
%   loops (while)
%   conditions (if/else)
%   random values (randi)
%   keyboard input (input)
%   output (fprintf)
function guessingGame()

    % @exercise Update this function so that it:
    %  1.  Prints a welcome message before promping for guesses.
    %  2.  Repeats the game, with a new secret number and guessCount set to 0, if
    %  the user wants to continue playing.  
    %  3.  (Extra) When the user decides they have had enough, print out a
    %  summary of the number of games they played and their average guess
    %  count.
    
    guessCount = 0;
    lowestNum = 0;
    highestNum = 1000;
    secretNum = randi([lowestNum,highestNum]);
    
    promptStr = sprintf('Guess a number between %u and %u: ',lowestNum, highestNum);
    guessedNum = input(promptStr);
    guessCount = guessCount+1;
    
    while(secretNum~=guessedNum)
        if(guessedNum<secretNum)
            fprintf('Your guess was too low.\n');
        else
            fprintf('Your guess was too high.\n');
        end
        
        % go ahead and prompt to guess again
        guessedNum = input('Guess again. ');
        guessCount = guessCount+1;
    end
    printExitMessage(guessCount,lowestNum,highestNum);
end

function printExitMessage(guessCount,lowestNum, highestNum)
    if guessCount == 1
        exitMessage = sprintf('That took 1 guess.  Lucky!');    
    else
        range = highestNum-lowestNum+1;
        if guessCount/range<0.2
            remarkStr = 'Good job!';
        elseif guessCount/range<0.5
            remarkStr = 'Fair.';
        else
            remarkStr = 'Hint: Try guessing selecting the number that is in the middle of the highest and lowest possible value each time to lower your guess count next time.';
        end
        exitMessage = sprintf('That took %u guesses.  %s',guessCount,remarkStr);
    end
    fprintf('%s\n',exitMessage);
end


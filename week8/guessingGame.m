% A number guessing game.  Part 3. 
% Example code for SE4003 week8
% Topics illustrated:
%   modular coding (function)
%   loops (while)
%   conditions (if/else)
%   random values (randi, rand, randn)
%   keyboard input (input)
%   string formatting (sprintf)
%   formatted file output (fprintf)
%   string comparisons (strcmp, strcmpi)

% @exercise Refactor the below code such that the source code of our
% guessing game, where numbers are guessed, is placed in separate function
% called playGuessingGame.  This function should be placed below guessingGame
% method (i.e. in this same file).  Remember to call your new function as
% part of refactoring your code.
function guessingGame()

    fprintf('Welcome to the guessing game.\n');
    
    while(strcmpi(getYesNoInput(),'y'))
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
    
    fprintf('Well, toodle loo!\n');
    
end

function response = getYesNoInput()
    response = input('Would you like to play again? y/n: ','s');
    if ~(strcmpi(response,'y') || strcmpi(response,'n'))
        response = input('Would you like to play again? y/n: ','s');
    end
end

function printExitMessage(guessCount,lowestNum, highestNum)
    if guessCount == 1
        exitMessage = sprintf('That took 1 guess.  Lucky!');    
    else
        range = highestNum-lowestNum+1;
        if guessCount/range <= ceil(log2(range))/100
            remarkStr = 'Good job!';
        elseif guessCount/range < ceil(log2(range))*1.5/100
            remarkStr = 'Fair.';
        else
            remarkStr = 'Hint: Try guessing selecting the number that is in the middle of the highest and lowest possible value each time to lower your guess count next time.';
        end
        exitMessage = sprintf('That took %u guesses.  %s',guessCount,remarkStr);
    end
    fprintf('%s\n',exitMessage);
end


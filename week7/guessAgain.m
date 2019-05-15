% A numeric guessing game - part 1.
% Example code for SE4003 week6/7
% Topics illustrated:
%   loops (while)
%   conditions (if/else)
%   random values (randi)
%   keyboard input (input)
%   output (fprintf)
function guessAgain
    % @exercise Add a variable to keep track of the number of guesses made
    % and initialize it to 0.

    lowestNum = 0;
    highestNum = 1000;
    secretNum = 4;
    
    
    % @exercise Update the prompt so it asks for number, inclusively, between
    % lowestNum and highestNum
    guessedNum = input('Guess a number. ');
    % @exercise Increase the guess count.
    
    
    % @exercise Update the following code so that a congratulatory message
    % is displayed even when the number is not guessed correctly the first
    % time.  
    if(secretNum==guessedNum)
        fprintf('Hoorah!\n');
    else
        while(secretNum~=guessedNum)
            if(guessedNum<secretNum)
                fprintf('Your guess was too low.\n');
            else
                fprintf('Your guess was too high.\n');
            end
            
            % go ahead and prompt to guess again 
            guessedNum = input('Guess again. ');
            
            % @exercise Increase the guess count by 1.
        end
    end

    % print exit message
    % @exercise Update the exit message to include how many guesses it
    % took.
    fprintf('Thanks\n');
    
    % @exercise Update the exit message to include a categorical remark 
    % based on the number of guesses taken.
    
    % @exercise Place the exit message in its own function called printExitMessage
    % and call that function, here, instead.
    
    
    % @exercise How can we remove the first if/else condition and only use
    % a while loop for this program?  Refactor your code to do this.
    
end

function printExitMessage()


end


% Stays in a loop while the desired condition is not true
function whileForeverNot()
passCode = 4;

inputCode = input('Enter the passcode: ');

while passCode~=inputCode
    fprintf('Incorrect passcode\n');
end

% Enter Control-c on the keyboard to break loop

fprintf('Proceed ...\n');
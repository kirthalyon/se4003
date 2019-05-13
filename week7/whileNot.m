% Stays in a loop while the desired condition is not true
function whileNot()
passCode = 4;

inputCode = input('Enter the passcode: ');

while passCode~=inputCode
    inputCode = input('Enter the passcode: ');
end

fprintf('Proceed ...\n');

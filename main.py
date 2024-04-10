# This is a sample Python script.

# Press Shift+F10 to execute it or replace it with your code.
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and settings.
import jsonrpclib
import subprocess
import time



def myExecute():
    # Use a breakpoint in the code line below to debug your script.
    print(f'Hi, executing prolog and query')  # Press Ctrl+F8 to toggle the breakpoint.

    #subprocess.run(["ls", "-l"])
    #subprocess.run(["swipl", "-s qserver.pl -g 'server(9997)'"])

    #print
    #subprocess.Popen("swipl -s qserver.pl -g server(9997)", shell=True, stdout=subprocess.PIPE).stdout.read()

    #subprocess.Popen("swipl -s qserver.pl -g server(9997)", shell=True)

    #time.sleep(3)  # Sleep for 3 seconds

    server = jsonrpclib.Server('http://localhost:9997/handle')

    # server.

    print("The result is: ", server.eval("f1(R), f2(S)"))


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    myExecute()

# See PyCharm help at https://www.jetbrains.com/help/pycharm/

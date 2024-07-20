# Shell Scripting Guide: Zero to Hero

### Introduction

Welcome to the Shell Scripting Guide: Zero to Hero! This guide is designed to help you learn shell scripting from scratch and advance to creating powerful automation scripts. Whether you're a beginner or looking to enhance your skills, this guide covers essential topics and practical examples.

Shell scripting allows you to automate repetitive tasks, manage system operations, and streamline workflows. You will learn how to define and use variables, understand different types of variables, and execute scripts effectively.

By the end of this guide, you will have a solid understanding of shell scripting and be able to create your own scripts to automate tasks efficiently. Let's get started and unlock the potential of shell scripting to boost your productivity in Unix-like systems.

### Understanding Variables in Shell Scripting

#### What is a Variable?

A variable in shell scripting is a named storage location that can hold a value. Variables are used to store data that can be referenced and manipulated within a script. This makes it easier to write flexible and reusable code.

#### Use of Variables

Variables are used in scripts to:
- Store user inputs
- Hold the results of commands
- Configure script behavior
- Manage data processing

#### Types of Variables

1. **Local Variables**: These are defined within a script or a function and are only accessible within that context.
2. **Environment Variables**: These are defined in the shell environment and are accessible to any child process or script.
3. **Positional Parameters**: These are variables that hold the arguments passed to a script from the command line.

### Defining and Using Variables

#### Defining a Variable

**Explanation**: Variables are defined by assigning a value to a name. This value can then be used throughout the script by referencing the variable name.

```sh
#!/bin/bash

# Define a variable
greeting="Hello, World!"

# Use the variable
echo $greeting
```

#### Passing Variables from the Command Line

**Explanation**: Variables can be passed to a script as arguments, known as positional parameters. The script can access these parameters using special variables like `$0`, `$1`, `$2`, and so on.

```sh
#!/bin/bash

# Accessing positional parameters
echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"

# Example of using all arguments
echo "All arguments: $@"
```

Running the script:

```sh
./script.sh arg1 arg2
```

Output:

```sh
Script name: ./script.sh
First argument: arg1
Second argument: arg2
All arguments: arg1 arg2
```

### Different Kinds of Variables with Examples

#### Local Variables

**Explanation**: Local variables are defined within a script or a function and are only accessible within that context. They are used to store temporary data that is only needed within a specific scope.

```sh
#!/bin/bash

name="Alice"
echo "Name: $name"
```

#### Environment Variables

**Explanation**: Environment variables are defined in the shell environment and are accessible to any child process or script. They are used to store system-wide values, such as the home directory and user information.

```sh
#!/bin/bash

# Print an environment variable
echo "Home directory: $HOME"
echo "User: $USER"
echo "Shell: $SHELL"
```

#### Positional Parameters

**Explanation**: Positional parameters hold the arguments passed to a script from the command line. They allow the script to accept input and make decisions based on that input.

```sh
#!/bin/bash

echo "First argument: $1"
echo "Second argument: $2"
```

#### Special Variables

**Explanation**: Special variables provide additional information about the script and its execution environment. These include the number of arguments, all arguments, the exit status of the last command, the process ID of the current script, and the process ID of the last background command.

- **`$#`**: Number of arguments passed to the script
- **`$@`**: All arguments passed to the script
- **`$?`**: Exit status of the last command executed
- **`$$`**: Process ID of the current script
- **`$!`**: Process ID of the last background command

```sh
#!/bin/bash

echo "Number of arguments: $#"
echo "All arguments: $@"
echo "Exit status of the last command: $?"
echo "Process ID of the current script: $$"
echo "Process ID of the last background command: $!"
```

### Practical Examples

#### Example 1: Using Local Variables

**Explanation**: This script defines a local variable `name` and uses it to print a greeting message. Local variables are used within the script to store temporary values.

```sh
#!/bin/bash

name="Alice"
echo "Hello, $name!"
```

#### Example 2: Using Environment Variables

**Explanation**: This script prints the values of several environment variables. Environment variables provide information about the user's environment and can be accessed from any script or process.

```sh
#!/bin/bash

echo "Your home directory is: $HOME"
echo "You are logged in as: $USER"
echo "Your shell is: $SHELL"
```

#### Example 3: Using Positional Parameters

**Explanation**: This script checks the number of arguments passed to it and prints them. Positional parameters allow the script to accept and process input from the command line.

```sh
#!/bin/bash

if [ $# -eq 2 ]; then
    echo "First argument: $1"
    echo "Second argument: $2"
else
    echo "Please provide exactly two arguments."
fi
```

#### Example 4: Using Special Variables

**Explanation**: This script demonstrates the use of special variables. One of these special variables is `$$`, which represents the process ID (PID) of the current script. The process ID is a unique number assigned to each running process in the operating system. It is useful for tracking and managing processes.

```sh
#!/bin/bash

echo "This script is called: $0"
echo "It received $# arguments: $@"
echo "The exit status of the last command is: $?"
echo "The process ID of this script is: $$"
echo "The process ID of the last background command is: $!"
```

Variables in shell scripting are essential for writing dynamic and flexible scripts. They allow you to store and manipulate data, making it easier to handle user inputs, process data, and configure script behavior. Understanding how to define and use different types of variables, including local variables, environment variables, positional parameters, and special variables, is fundamental to effective shell scripting.


### Comparison Operators

 In bash scripting, comparison operators are used in conditional statements to compare values. Here is a list of common comparison operators along with examples of how to use them.

### Numeric Comparison Operators

- **`-eq`**: Equal to
  ```sh
  if [ "$a" -eq "$b" ]; then
    echo "$a is equal to $b"
  fi
  ```

- **`-ne`**: Not equal to
  ```sh
  if [ "$a" -ne "$b" ]; then
    echo "$a is not equal to $b"
  fi
  ```

- **`-lt`**: Less than
  ```sh
  if [ "$a" -lt "$b" ]; then
    echo "$a is less than $b"
  fi
  ```

- **`-le`**: Less than or equal to
  ```sh
  if [ "$a" -le "$b" ]; then
    echo "$a is less than or equal to $b"
  fi
  ```

- **`-gt`**: Greater than
  ```sh
  if [ "$a" -gt "$b" ]; then
    echo "$a is greater than $b"
  fi
  ```

- **`-ge`**: Greater than or equal to
  ```sh
  if [ "$a" -ge "$b" ]; then
    echo "$a is greater than or equal to $b"
  fi
  ```

### String Comparison Operators

- **`=`**: Equal to
  ```sh
  if [ "$a" = "$b" ]; then
    echo "$a is equal to $b"
  fi
  ```

- **`!=`**: Not equal to
  ```sh
  if [ "$a" != "$b" ]; then
    echo "$a is not equal to $b"
  fi
  ```

- **`<`**: Less than (lexicographical order)
  ```sh
  if [[ "$a" < "$b" ]]; then
    echo "$a is less than $b"
  fi
  ```

- **`>`**: Greater than (lexicographical order)
  ```sh
  if [[ "$a" > "$b" ]]; then
    echo "$a is greater than $b"
  fi
  ```

- **`-z`**: String is null (empty)
  ```sh
  if [ -z "$a" ]; then
    echo "String is empty"
  fi
  ```

- **`-n`**: String is not null (not empty)
  ```sh
  if [ -n "$a" ]; then
    echo "String is not empty"
  fi
  ```

### File Comparison Operators

- **`-e`**: File exists
  ```sh
  if [ -e "$file" ]; then
    echo "File exists"
  fi
  ```

- **`-f`**: File is a regular file
  ```sh
  if [ -f "$file" ]; then
    echo "File is a regular file"
  fi
  ```

- **`-d`**: File is a directory
  ```sh
  if [ -d "$directory" ]; then
    echo "Directory exists"
  fi
  ```

- **`-s`**: File is not empty
  ```sh
  if [ -s "$file" ]; then
    echo "File is not empty"
  fi
  ```

- **`-r`**: File is readable
  ```sh
  if [ -r "$file" ]; then
    echo "File is readable"
  fi
  ```

- **`-w`**: File is writable
  ```sh
  if [ -w "$file" ]; then
    echo "File is writable"
  fi
  ```

- **`-x`**: File is executable
  ```sh
  if [ -x "$file" ]; then
    echo "File is executable"
  fi
  ```

### Example Script Using Various Comparison Operators

```sh
#!/bin/bash

a=5
b=10
file="example.txt"
string1="hello"
string2="world"

# Numeric comparison
if [ "$a" -lt "$b" ]; then
    echo "$a is less than $b"
fi

# String comparison
if [ "$string1" != "$string2" ]; then
    echo "$string1 is not equal to $string2"
fi

# File comparison
if [ -e "$file" ]; then
    echo "File $file exists"
else
    echo "File $file does not exist"
fi

# String length comparison
if [ -z "$string1" ]; then
    echo "String is empty"
else
    echo "String is not empty"
fi
```

These comparison operators are commonly used in bash scripting to perform various checks and conditions. They are essential for writing robust and flexible scripts.








##  Random Common Issues

### 1. Why I can't execute the command with `./scriptname.sh` format?
 
If you can't execute a script using the `./scriptname.sh` format but can execute it using the `sh scriptname.sh` format, it is likely due to one or more of the following reasons:

1. **Lack of Execute Permissions**:
   - For a script to be executed with `./scriptname.sh`, it needs to have execute permissions. Without execute permissions, the shell will not allow the script to be run directly.

2. **Incorrect Shebang Line**:
   - The shebang line (`#!/bin/bash` or `#!/bin/sh`) at the top of the script specifies which interpreter should be used to run the script. If this line is missing or incorrect, the script may not run as expected when executed directly.

3. **Path Issues**:
   - The current directory (`.`) might not be in your `PATH`. When you use `./scriptname.sh`, you are specifying the path to the script explicitly. 

### Steps to Fix the Issue

#### 1. Add Execute Permissions

To add execute permissions to your script, use the `chmod` command:

```sh
chmod +x scriptname.sh
```

After adding execute permissions, you should be able to run the script with `./scriptname.sh`.

#### 2. Verify the Shebang Line

Ensure that the first line of your script specifies the correct interpreter:

```sh
#!/bin/bash
```

For example, the script should look something like this:

```sh
#!/bin/bash
echo "Hello, World!"
```

#### 3. Check the Path

Make sure you are in the correct directory and specify the relative or absolute path to the script. If you are in the same directory as the script, you can use `./`:

```sh
cd /path/to/directory
./scriptname.sh
```

### Example

Here’s an example script with proper permissions and a correct shebang line:

#### Create the Script

```sh
echo '#!/bin/bash' > scriptname.sh
echo 'echo "Hello, World!"' >> scriptname.sh
```

#### Add Execute Permissions

```sh
chmod +x scriptname.sh
```

#### Execute the Script

```sh
./scriptname.sh
```

Output:

```sh
Hello, World!
```

### Summary

- Ensure the script has execute permissions: `chmod +x scriptname.sh`.
- Verify the shebang line is correct: `#!/bin/bash` at the top of the script.
- Use the correct path to execute the script: `./scriptname.sh`.

By following these steps, you should be able to execute your script using the `./scriptname.sh` format. If you have any further questions or encounter additional issues, feel free to ask!

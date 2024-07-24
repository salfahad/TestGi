# Shell Scripting Guide: Zero to Hero

### Introduction

Welcome to the Shell Scripting Guide: Zero to Hero! This guide is designed to help you learn shell scripting from scratch and advance to creating powerful automation scripts. Whether you're a beginner or looking to enhance your skills, this guide covers essential topics and practical examples.

Shell scripting allows you to automate repetitive tasks, manage system operations, and streamline workflows. You will learn how to define and use variables, understand different types of variables, and execute scripts effectively.

By the end of this guide, you will have a solid understanding of shell scripting and be able to create your own scripts to automate tasks efficiently. Let's get started and unlock the potential of shell scripting to boost your productivity in Unix-like systems.

<details>
 <summary> Understanding Variables in Shell Scripting</summary>

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
</details>

<details>
<summary>Comparison Operators</summary>

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

</details>

<details>
  <summary>Control Flow in Shell Scripting</summary>

  Control flow statements are used to execute specific blocks of code based on conditions or iterations. Here are the main control flow statements in shell scripting:

  1. `if-else`
  2. `for`
  3. `while`
  4. `until` (similar to `do-while` in other languages)
  5. `case` (similar to `switch` in other languages)

  <details>
    <summary>if-else</summary>

    The `if-else` statement allows you to execute a block of code if a condition is true and another block if the condition is false.

    **Example 1: Check if a File Exists**
    ```sh
    #!/bin/bash

    FILE="example.txt"

    if [ -e "$FILE" ]; then
        echo "The file $FILE exists."
    else
        echo "The file $FILE does not exist."
    fi
    ```

    **Example 2: Compare Two Numbers**
    ```sh
    #!/bin/bash

    NUM1=10
    NUM2=20

    if [ "$NUM1" -gt "$NUM2" ]; then
        echo "$NUM1 is greater than $NUM2."
    else
        echo "$NUM1 is not greater than $NUM2."
    fi
    ```
  </details>

  <details>
    <summary>for</summary>

    The `for` loop is used to iterate over a list of items or a range of numbers.

    **Example 1: Iterate Over a List of Strings**
    ```sh
    #!/bin/bash

    for NAME in Alice Bob Charlie; do
        echo "Hello, $NAME!"
    done
    ```

    **Example 2: Iterate Over a Range of Numbers**
    ```sh
    #!/bin/bash

    for i in {1..5}; do
        echo "Iteration $i"
    done
    ```
  </details>

  <details>
    <summary>while</summary>

    The `while` loop is used to execute a block of code as long as a condition is true.

    **Example: Monitor the Status of an EC2 Instance**
    ```sh
    #!/bin/bash

    INSTANCE_ID="i-0abcd1234efgh5678"
    STATUS=$(aws ec2 describe-instances --instance-ids $INSTANCE_ID --query "Reservations[0].Instances[0].State.Name" --output text)

    while [ "$STATUS" != "running" ]; do
        echo "Instance status: $STATUS"
        sleep 10
        STATUS=$(aws ec2 describe-instances --instance-ids $INSTANCE_ID --query "Reservations[0].Instances[0].State.Name" --output text)
    done

    echo "Instance is now running."
    ```
  </details>

  <details>
    <summary>until</summary>

    The `until` loop is similar to the `while` loop but it executes as long as the condition is false (essentially the inverse of `while`).

    **Example: Wait Until a Condition is Met**
    ```sh
    #!/bin/bash

    COUNT=1

    until [ "$COUNT" -gt 5 ]; do
        echo "Count is $COUNT"
        COUNT=$((COUNT + 1))
    done
    ```

    **Note**: In many scenarios, `until` can be used similarly to a `do-while` loop in other languages.
  </details>

  <details>
    <summary>case</summary>

    The `case` statement allows you to execute different blocks of code based on the value of a variable.

    **Example: Check a Variable's Value**
    ```sh
    #!/bin/bash

    OPTION="B"

    case $OPTION in
        "A")
            echo "Option A selected."
            ;;
        "B")
            echo "Option B selected."
            ;;
        "C")
            echo "Option C selected."
            ;;
        *)
            echo "Invalid option."
            ;;
    esac
    ```
  </details>

  ### Practical Examples Using Control Flow

  **Example: Backup Files to S3 Using a `for` Loop**
  ```sh
  #!/bin/bash

  DIRECTORY="/path/to/directory"
  BUCKET_NAME="my-backup-bucket"

  if [ -d "$DIRECTORY" ]; then
      for FILE in $DIRECTORY/*; do
          aws s3 cp "$FILE" s3://$BUCKET_NAME/ --recursive
          echo "Uploaded $FILE to $BUCKET_NAME"
      done
  else
      echo "Directory $DIRECTORY does not exist."
  fi
  ```

  **Example: Start Multiple EC2 Instances Using a `for` Loop**
  ```sh
  #!/bin/bash

  INSTANCE_IDS=("i-0abcd1234efgh5678" "i-1abcd1234efgh5678")

  for INSTANCE_ID in "${INSTANCE_IDS[@]}"; do
      aws ec2 start-instances --instance-ids $INSTANCE_ID
      echo "Starting instance $INSTANCE_ID"
  done
  ```

  **Example: Create and Terminate EC2 Instances Using `while` Loop**
  ```sh
  #!/bin/bash

  AMI_ID="ami-0abcdef1234567890"
  INSTANCE_TYPE="t2.micro"
  KEY_NAME="my-key-pair"
  INSTANCE_ID=$(aws ec2 run-instances --image-id $AMI_ID --instance-type $INSTANCE_TYPE --key-name $KEY_NAME --query "Instances[0].InstanceId" --output text)

  echo "Launched instance $INSTANCE_ID. Waiting for 60 seconds..."
  sleep 60

  aws ec2 terminate-instances --instance-ids $INSTANCE_ID
  echo "Terminated instance $INSTANCE_ID."
  ```

  **Example: Monitor S3 Bucket Size Using `until` Loop**
  ```sh
  #!/bin/bash

  BUCKET_NAME="my-bucket"
  THRESHOLD=1000000000 # 1GB in bytes

  until [ $(aws s3api list-objects --bucket $BUCKET_NAME --query "sum(Contents[].Size)" --output text) -gt $THRESHOLD ]; do
      echo "Bucket size is below threshold. Checking again in 10 seconds..."
      sleep 10
  done

  echo "Bucket size exceeds threshold."
  ```

  **Example: Enable Versioning on S3 Buckets Using `case` Statement**
  ```sh
  #!/bin/bash

  BUCKET_NAME="my-bucket"
  VERSIONING_STATUS=$(aws s3api get-bucket-versioning --bucket $BUCKET_NAME --query "Status" --output text)

  case $VERSIONING_STATUS in
      "Enabled")
          echo "Versioning is already enabled on $BUCKET_NAME."
          ;;
      "Suspended")
          echo "Versioning is suspended on $BUCKET_NAME. Enabling versioning..."
          aws s3api put-bucket-versioning --bucket $BUCKET_NAME --versioning-configuration Status=Enabled
          ;;
      *)
          echo "Versioning is not enabled on $BUCKET_NAME. Enabling versioning..."
          aws s3api put-bucket-versioning --bucket $BUCKET_NAME --versioning-configuration Status=Enabled
          ;;
  esac
  ```

  ### Additional Useful AWS CLI Commands for Practice

  1. **Create an S3 Bucket and Upload a File**
      ```sh
      #!/bin/bash

      BUCKET_NAME="my-new-bucket"
      FILE_TO_UPLOAD="myfile.txt"

      aws s3 mb s3://$BUCKET_NAME
      aws s3 cp $FILE_TO_UPLOAD s3://$BUCKET_NAME/
      echo "File $FILE_TO_UPLOAD uploaded to bucket $BUCKET_NAME."
      ```

  2. **Describe EC2 Instances in a Specific Region**
      ```sh
      #!/bin/bash

      REGION=$1

      if [ -z "$REGION" ]; then
          echo "Please specify a region."
          exit 1
      fi

      aws ec2 describe-instances --region $REGION
      ```

  3. **Monitor S3 Bucket Size**
      ```sh
      #!/bin/bash

      BUCKET_NAME="my-bucket"
      THRESHOLD=1000000000 # 1GB in bytes

      BUCKET_SIZE=$(aws s3api list-objects --bucket $BUCKET_NAME --query "sum(Contents[].Size)" --output text)

      if [ "$BUCKET_SIZE" -gt "$THRESHOLD" ]; then
          echo "Warning: Bucket size exceeds threshold. Current size: $BUCKET_SIZE bytes."
      else
          echo

 "Bucket size is within limits. Current size: $BUCKET_SIZE bytes."
      fi
      ```

  ### Summary

  This section covers various control flow statements in shell scripting, including `if-else`, `for`, `while`, `until`, and `case`. Each control flow structure is explained with practical examples, making it easier to understand and apply in real-world scenarios. By mastering these control flow statements, you will be able to write more robust and flexible shell scripts to automate tasks and manage system operations efficiently.
</details>

<details>
    <summary>How to return a value form a function</summary>
In a bash script, you can define a function that returns a value by using command substitution. Although bash functions do not have a direct way to return a value like functions in some other programming languages, you can use `echo` to output the value and then capture that output using command substitution (`$(...)` or backticks).

Here's an example of a bash function that calculates the sum of two numbers and returns the result:

```bash
#!/bin/bash

# Define a function to calculate the sum of two numbers
function sum {
  local num1=$1
  local num2=$2
  local result=$((num1 + num2))
  echo $result
}

# Call the function and capture the return value
result=$(sum 5 3)

# Print the result
echo "The sum is: $result"
```

### Explanation

1. **Function Definition**:
   ```bash
   function sum {
     local num1=$1
     local num2=$2
     local result=$((num1 + num2))
     echo $result
   }
   ```
    - `function sum { ... }`: Defines a function named `sum`.
    - `local num1=$1`: Assigns the first argument passed to the function to the variable `num1`.
    - `local num2=$2`: Assigns the second argument passed to the function to the variable `num2`.
    - `local result=$((num1 + num2))`: Calculates the sum of `num1` and `num2` and stores it in the variable `result`.
    - `echo $result`: Outputs the value of `result`.

2. **Function Call and Capturing Output**:
   ```bash
   result=$(sum 5 3)
   ```
    - `$(sum 5 3)`: Calls the `sum` function with arguments `5` and `3`. The `echo` output from the function is captured using command substitution and assigned to the variable `result`.

3. **Printing the Result**:
   ```bash
   echo "The sum is: $result"
   ```
    - Prints the captured result.

### Running the Script

To run the script, save it to a file (e.g., `sum_script.sh`), make it executable, and execute it:

```bash
chmod +x sum_script.sh
./sum_script.sh
```

This script will output:

```
The sum is: 8
```

This is a simple example demonstrating how to return values from a bash function using `echo` and command substitution. You can apply this pattern to more complex functions as needed.

### Examples of function return using AWS Services

Here are some examples of using bash functions with return values in the context of interacting with AWS services. We'll use the AWS CLI to demonstrate these examples.

### Example 1: Check if an S3 Bucket Exists

This function checks if a specified S3 bucket exists and returns `0` if it does or `1` if it doesn't.

```bash
#!/bin/bash

function bucket_exists {
  local bucket_name=$1
  aws s3 ls "s3://$bucket_name" > /dev/null 2>&1
  if [ $? -eq 0 ]; then
    echo "Bucket exists"
    return 0
  else
    echo "Bucket does not exist"
    return 1
  fi
}

bucket_exists "my-example-bucket"
bucket_status=$?

if [ $bucket_status -eq 0 ]; then
  echo "The bucket exists."
else
  echo "The bucket does not exist."
fi
```

### Example 2: Get the Instance ID of an EC2 Instance by Tag

This function retrieves the instance ID of an EC2 instance with a specific tag key-value pair.

```bash
#!/bin/bash

function get_instance_id {
  local tag_key=$1
  local tag_value=$2
  local instance_id=$(aws ec2 describe-instances --filters "Name=tag:$tag_key,Values=$tag_value" --query "Reservations[*].Instances[*].InstanceId" --output text)
  echo $instance_id
}

instance_id=$(get_instance_id "Name" "my-ec2-instance")

if [ -n "$instance_id" ]; then
  echo "Instance ID: $instance_id"
else
  echo "No instance found with the specified tag."
fi
```

### Example 3: Get the Public IP of an EC2 Instance

This function retrieves the public IP address of an EC2 instance given its instance ID.

```bash
#!/bin/bash

function get_public_ip {
  local instance_id=$1
  local public_ip=$(aws ec2 describe-instances --instance-ids $instance_id --query "Reservations[*].Instances[*].PublicIpAddress" --output text)
  echo $public_ip
}

instance_id="i-0abcdef1234567890"
public_ip=$(get_public_ip $instance_id)

if [ -n "$public_ip" ]; then
  echo "Public IP: $public_ip"
else
  echo "Instance does not have a public IP address."
fi
```

### Example 4: Create a New S3 Bucket

This function creates a new S3 bucket and returns the status of the creation operation.

```bash
#!/bin/bash

function create_bucket {
  local bucket_name=$1
  aws s3api create-bucket --bucket $bucket_name --region us-east-1 > /dev/null 2>&1
  if [ $? -eq 0 ]; then
    echo "Bucket created successfully"
    return 0
  else
    echo "Failed to create bucket"
    return 1
  fi
}

create_bucket "my-new-bucket"
bucket_creation_status=$?

if [ $bucket_creation_status -eq 0 ]; then
  echo "Bucket was created successfully."
else
  echo "Bucket creation failed."
fi
```

### Example 5: Get the List of All EC2 Instances

This function retrieves and prints a list of all EC2 instance IDs.

```bash
#!/bin/bash

function list_instances {
  local instance_ids=$(aws ec2 describe-instances --query "Reservations[*].Instances[*].InstanceId" --output text)
  echo $instance_ids
}

instance_ids=$(list_instances)

if [ -n "$instance_ids" ]; then
  echo "Instance IDs:"
  for id in $instance_ids; do
    echo $id
  done
else
  echo "No instances found."
fi
```

### Summary

These examples demonstrate how to use bash functions to interact with AWS services and return values. By using `echo` to output results and capturing them with command substitution, you can effectively manage and utilize AWS resources within bash scripts. These scripts can be adapted and expanded for various AWS automation tasks.


</details>

##  Random Common Issues

 <details> 
    <summary>1. Why I can't execute the command with `./scriptname.sh` format?</summary>
 
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

</details> 


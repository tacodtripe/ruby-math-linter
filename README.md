<p align="center">
  <img width="200" height="150" src="https://raw.githubusercontent.com/tacodtripe/ruby-math-linter/features/images/microverse-logo.png">
</p>

# Ruby Capstone project :  Plain text math linter.

## About the project
  This is the **Ruby Capstone Project** required at the end of **Ruby** module in Microverse Curriculum.
  Specifically is a **Math Linter** with the purpose to check for spacing, function's arguments correctly enclosed, and general syntax corrections when writing math expresions in plain text.
## Built With
  Ruby
  
## Rules
In order to use the general Mathematical specifications I used [this](https://pages.uoregon.edu/ncp/Courses/MathInPlainTextEmail.html) guide as a reference to create the linter format. Let's take a look to a few examples to make it clearer.

**Spacing**
* Al elements separated by the "+" and "-" signs must have one blank space before and after the corresponding sign, this makes the code more readable.

bad code:
```
5x-1+3cos (3x)
```

good code:
```
5x - 1 + 3cos (3x)
```

**Unmatched grouping symbols**
* Whenever you open a grouping symbol, i.e (, [, {, the corresponding ending symbol must be used.

bad code:
```
[5x-1) +3cos (3x)
```

good code:
```
[5x - 1] + 3cos (3x)
```

**Function's arguments**
* A way to avoid confusion is to correctly enclosed the arguments of a function with parenthesees, this will help the readers know what is the function is working over.

bad code:
```
3cos 3x - 1
```

good code:
```
3cos (3x) - 1
```

**Division's Syntax**
* It's pretty common to be confused about the order of a pretty simple algebraic operation that includes the "/" sign, the solution for this might be adding some parentheses to explicitly define the numerator and denominator.

bad code: here we are obligated to start with the division of 6 / x, but maybe the author meant something else.
```
x - 6 / x + 9
```

good code: now it's clear what we are supposed to do.
```
 (x - 6) / (x + 9)
```

## Instructions to test using Rspec
1. Clone the repository to your local machine.

2. `cd` inside the folder

3. Go to terminal and Install Rspec by `gem install rspec`

4. To run tests run `rspec` in the terminal

5. Tests that are passing will be displayed along with those failing.

## Authors

👨 **Raul Figueroa**
- Twitter: https://twitter.com/raul_figueroa17
- Github: https://github.com/tacodtripe
- Linkedin: https://www.linkedin.com/in/luis-raul-figueroa-soto-63411118a/

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
Support this project with a ⭐️ and let us now if you would like to become a contributor!

# git-commit-with-elscreen.el

## Installation

Just place the file "git-commit-with-elscreen.el" to a directory specified by the variable `load-path` .

## Usage

Simply, load this file and define the key.

```
(require 'git-commit-with-elscreen)
(define-key git-commit-map (kbd "C-x C-s") 'git-commit-and-kill-buffer)
```

Under the git-commit mode, press C-x C-s to save commit message.  
And after that the screen generated automatically by elscreen will be killed.

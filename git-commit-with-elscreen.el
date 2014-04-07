;;; git-commit-with-elscreen.el --- Commit to git repos by emacs with elscreen usefully.

;; Copyright (C) 2014 Nobuyuki Sato
;; Author:  Nobuyuki Sato <nobu417@me.com>
;; Created: 07 Apr 2014
;; URL: https://github.com/nobu417/git-commit-with-elscreen

;; The MIT License (MIT)

;; Copyright (c) 2014 Nobuyuki Sato

;; Permission is hereby granted, free of charge, to any person obtaining a copy of
;; this software and associated documentation files (the "Software"), to deal in
;; the Software without restriction, including without limitation the rights to
;; use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
;; the Software, and to permit persons to whom the Software is furnished to do so,
;; subject to the following conditions:

;; The above copyright notice and this permission notice shall be included in all
;; copies or substantial portions of the Software.

;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
;; FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
;; COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
;; IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
;; CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

;;; Code:

(defun git-commit-and-kill-buffer ()
  (interactive)
  (when (and (buffer-file-name)
	(string-match "[COMMIT_EDITMSG|MERGE_MSG]" (buffer-file-name)))
	(save-buffer)
	(elscreen-kill-screen-and-buffers))
)

(provide 'git-commit-with-elscreen)
;;; git-commit-with-elscreen.el ends here

;; So the idea is that you copy/paste this code into your *scratch* buffer,
;; hit C-j (or do M-x eval-current-buffer), and you have a working el-get. 
;; Instead we open this file and do the same thing.
;; 
;; Once this is done close it out (C-x-c) and restart emacs.
;; 
(url-retrieve
 "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
 (lambda (s)
   (goto-char (point-max))
   (eval-print-last-sexp)))
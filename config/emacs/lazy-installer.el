;; So the idea is that you copy/paste this code into your *scratch* buffer,
;; hit C-j, and you have a working el-get.
(url-retrieve
 "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
 (lambda (s)
   (goto-char (point-max))
   (eval-print-last-sexp)))
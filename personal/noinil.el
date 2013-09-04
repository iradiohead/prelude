;;; package --- Summary
;;; noinil@gmail.com my personalize.el for prelude

;;; commentary:

;;; code:

;; auto installation of packages
(prelude-require-packages '(top-mode w3 yasnippet))

;; set font for all windows
(add-to-list 'default-frame-alist '(font . "WenQuanYi Micro Hei Mono-10"))


;; eim settings =================================================
(add-to-list 'load-path "/home/noinil/.eplugins/eim")
(autoload 'eim-use-package "eim" "Another Emacs input method")
(setq eim-use-tooltip nil)

(register-input-method
 "eim-wb" "euc-cn" 'eim-use-package
 "五笔" "汉字五笔输入法" "wb.txt")
(register-input-method
 "eim-py" "euc-cn" 'eim-use-package
 "拼音" "汉字拼音输入法" "py.txt")

;; 用 ; 暂时输入英文
(require 'eim-extra)
(global-set-key ";" 'eim-insert-ascii)
;; eim settings =================================================


;; org-mode settings =================================================
(setq org-todo-keywords
      '((sequence "TODO(t)" "FEEDBACK(e!)" "VERIFY(j)" "STARTED(g!)" "|" "DONE(d!)")
        (sequence "NEXT(n)" "SPECIFIED(i!)")
        (sequence "SUBMITTED(s!)" "REVISION(v)" "|" "ACCEPTED(a!)" "PUBLISHED(p!)")
        (sequence "REPORT(r@)" "BUG(b@)" "KNOWN-CAUSE(k@)" "|" "FIXED(f!)")
        (sequence "WAITING(w)" "SOMEDAY(m)" "|" "CANCELED(c@)")))
;; org-mode settings =================================================


;;; noinil.el ends here

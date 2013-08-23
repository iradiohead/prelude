;;; package --- Summary
;;; noinil@gmail.com my personalize.el for prelude

;;; commentary:

;;; code:

;; set line width
(setq default-fill-column 80)

;; set line number mode
(global-linum-mode 1)

;; set font for all windows
(setq face-font-rescale-alist '(("Microsoft Yahei" . 1.2) ("WenQuanYi Zen Hei" . 1.2)))
(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-10"))

;; calendar start on Monday
(setq calendar-week-start-day 1)


;; eim settings =================================================
(add-to-list 'load-path "~/.eplugins/eim")
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


;; erc settings =================================================
(setq erc-email-userid "noinil@gmail.com")
(setq erc-nick "oinil")
(setq erc-nick-uniquifier "_nil")
(setq erc-server "irc.freenode.net")
;; erc settings =================================================


;; org-mode settings =================================================
(setq org-todo-keywords
      '((sequence "TODO(t)" "FEEDBACK(e!)" "VERIFY(j)" "STARTED(g!)" "|" "DONE(d!)")
        (sequence "NEXT(n)" "SPECIFIED(i!)")
        (sequence "SUBMITTED(s!)" "REVISION(v)" "|" "ACCEPTED(a!)" "PUBLISHED(p!)")
        (sequence "REPORT(r@)" "BUG(b@)" "KNOWN-CAUSE(k@)" "|" "FIXED(f!)")
        (sequence "WAITING(w)" "SOMEDAY(m)" "|" "CANCELED(c@)")))
;; org-mode settings =================================================

;;; noinil.el ends here

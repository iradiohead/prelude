;;; package --- Summary
;;; noinil@gmail.com my personalize.el for prelude

;;; commentary:

;;; code:

;; auto installation of packages ===============================================
(prelude-require-packages '(top-mode w3m yasnippet dired+ minimap top-mode))

;; associate files with modes ==================================================
(add-to-list 'auto-mode-alist '("\\.pdb\\'" . text-mode))

;; mode-hook ===================================================================
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; set frame title =============================================================
(setq frame-title-format '("" invocation-name " ::
noinil@gmail.com :: Cheng Tan ::
- " (:eval (if (buffer-file-name) (abbreviate-file-name (buffer-file-name)) "%b"))))

;; set fontset and font ========================================================
(create-fontset-from-fontset-spec
 "-unknown-DejaVu Sans Mono-normal-normal-normal-*-13-*-*-*-m-0-fontset-myfontset")
(set-fontset-font "fontset-myfontset" 'han "WenQuanYi Micro Hei Mono")
(add-to-list 'default-frame-alist '(font . "fontset-myfontset"))

;; auto-load files =============================================================


;; dired mode settings =========================================================
;;  ____ ___ ____  _____ ____
;; |  _ \_ _|  _ \| ____|  _ \
;; | | | | || |_) |  _| | | | |
;; | |_| | ||  _ <| |___| |_| |
;; |____/___|_| \_\_____|____/
;;
;; use dired+ mode instead of dired
(require 'dired+)

;; redefine keys
(defun noinil-dired-mode-keys ()
  "Modify keymaps used by `dired+-mode'."
  (local-set-key (kbd "C-n") 'dired-next-line)
  (local-set-key (kbd "C-p") 'dired-previous-line)

  ;; (local-set-key (kbd "C-c C-p") nil) ; remove a key

    ;; …
  )

;; add to dired-mode-hook
(add-hook 'dired-mode-hook 'noinil-dired-mode-keys)
;;  ============================================================================


;; eim settings ================================================================
;;       _
;;   ___(_)_ __ ___
;;  / _ \ | '_ ` _ \
;; |  __/ | | | | | |
;;  \___|_|_| |_| |_|
;;
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
;;  ============================================================================

;; org-mode settings ===========================================================
;;                                            _
;;   ___  _ __ __ _       _ __ ___   ___   __| | ___
;;  / _ \| '__/ _` |_____| '_ ` _ \ / _ \ / _` |/ _ \
;; | (_) | | | (_| |_____| | | | | | (_) | (_| |  __/
;;  \___/|_|  \__, |     |_| |_| |_|\___/ \__,_|\___|
;;            |___/
;;
(setq org-todo-keywords
      '((sequence "TODO(t)" "FEEDBACK(e!)" "VERIFY(j)" "STARTED(g!)" "|" "DONE(d!)")
        (sequence "NEXT(n)" "SPECIFIED(i!)")
        (sequence "SUBMITTED(s!)" "REVISION(v)" "|" "ACCEPTED(a!)" "PUBLISHED(p!)")
        (sequence "REPORT(r@)" "BUG(b@)" "KNOWN-CAUSE(k@)" "|" "FIXED(f!)")
        (sequence "WAITING(w)" "SOMEDAY(m)" "|" "CANCELED(c@)")))
;; =============================================================================


;;; noinil.el ends here

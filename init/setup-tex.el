(setq TeX-auto-save t)
(setq TeX-parse-self t)

(setq LaTeX-math-list '((?, "dot" "Accents" nil)))

(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook '(lambda () (ispell-change-dictionary "en_GB-ise")))
(add-hook 'LaTeX-mode-hook 'latex-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-off-auto-fill)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)

;; Don't autofill equations etc
;; From: http://www.mail-archive.com/auctex@gnu.org/msg04076.html

(add-hook 'LaTeX-mode-hook '(lambda ()
			      (defvar LaTeX-no-auto-fill-environments
				(mapcar 'car LaTeX-indent-environment-list)
				"List of LaTeX environments to suppress auto-fill.")))

(defun auto-preview-auto-fill-function ()
  "Run `do-auto-fill' based on current mode.
Will run `do-auto-fill' to provide auto-filling of current line
unless the current LaTeX environment is a member of
`LaTeX-no-auto-fill-environments'.

 For use as `auto-fill-function'."
  (unless (member (LaTeX-current-environment)
                  LaTeX-no-auto-fill-environments)
    (do-auto-fill)))

(add-hook 'LaTeX-mode-hook '(lambda () (setq auto-fill-function 'auto-preview-auto-fill-function)))

(setq reftex-plug-into-AUCTeX t)

(provide 'setup-tex)

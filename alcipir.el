;;; alcipir.el --- alcipir's config file

;;; Commentary:
;; 

;;; Code:

(defun alcipir/configure-font (FONT)
  "Configure default FONT."
  (set-face-attribute 'default t :font FONT)
  (set-frame-font FONT nil t))

(defun alcipir/configure-user-interface ()
  "Configure user interface."
  (alcipir/configure-font "Courier Prime-14")
  (alcipir/custom-interface-mode 1))

(defun alcipir/configure-user-experience ()
  "Configure user experience such as chords, keybindings and special modes."
  (global-unset-key (kbd "C-v"))
  (global-unset-key (kbd "M-v"))
  (global-set-key (kbd "M-p") (lambda nil (interactive) (scroll-down-command 10)))
  (global-set-key (kbd "M-n") (lambda nil (interactive) (scroll-up-command 10)))
  (global-set-key (kbd "C-w") 'backward-kill-word)
  (global-set-key (kbd "C-x C-m") 'execute-extended-command)
  (global-set-key (kbd "C-x C-k") 'kill-region)
  (global-set-key (kbd "C-x C-5") 'query-replace-regexp)
  (global-set-key (kbd "C-x C-b") 'ibuffer-list-buffers)
  (global-set-key (kbd "C-t") (lambda nil (interactive) (ansi-term "/bin/bash")))
  (global-set-key (kbd "C-x C-r") (lambda nil (interactive) (dired "~/Repos")))
  (global-prettify-symbols-mode +1)
  (use-package undo-tree
    :bind (("C-z" . undo-tree-undo)
	   ("C-x C-z" . undo-tree-undo))
    :config
    (setq undo-tree-visualizer-diff t)
    (setq undo-tree-visualizer-timestamps t)
    (setq undo-tree-auto-save-history nil)
    (setq undo-tree-limit 1000)
    (setq undo-limit 1000)
    (global-undo-tree-mode))
  (setq backup-directory-alist
        `(("." . ,(concat user-emacs-directory "backups"))))
  (use-package move-text
    :config (move-text-default-bindings))
  (use-package which-key
    :config
    (which-key-mode)))

(defun alcipir/configure-package-manager ()
  "Initial package manager setup."
  (setq package-enable-at-startup nil)
  (alcipir/straightel-bootstrap)
  (straight-use-package 'use-package)
  (setq straight-use-package-by-default t))

(defun alcipir/straightel-bootstrap ()
  "Bootstrap straight.el."
  (defvar bootstrap-version)
  (let ((bootstrap-file
	 (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
	(bootstrap-version 5))
    (unless (file-exists-p bootstrap-file)
      (with-current-buffer
          (url-retrieve-synchronously
"https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
           'silent 'inhibit-cookies)
	(goto-char (point-max))
	(eval-print-last-sexp)))
    (load bootstrap-file nil 'nomessage)))


(defun alcipir/configure-programming-languages ()
  "General and specific configuration for programming languages."
  (use-package format-all)
  (use-package markdown-mode
    :config
    (add-to-list 'auto-mode-alist
		 '("\\.md\\'" . markdown-mode)))
  (use-package typescript-mode
    :config
    (add-hook 'typescript-mode-hook #'setup-tide-mode)
    (add-to-list 'auto-mode-alist
		 '("\\.ts\\'" . typescript-mode))
    (add-to-list 'auto-mode-alist
		 '("\\.tsx\\'" . typescript-mode))))

(defun alcipir/define-custom-modes ()
  "Define custom modes."
  (alcipir/define-custom-interface-mode))

(defun alcipir/define-custom-interface-mode ()
  "Define custom interface minor mode."
  (defvar alcipir/custom-interface-mode nil)
  (define-minor-mode alcipir/custom-interface-mode
    "Minor mode with specific configuration for Emacs UI."
    :init-value nil
    :global t
    :variable alcipir/custom-interface-mode
    :group 'editing-basics
    (setq initial-scratch-message "")
    (setq inhibit-startup-message t)
    (setq visible-bell t)
    (global-visual-line-mode 1)
    (blink-cursor-mode 0)
    (scroll-bar-mode 0)
    (tool-bar-mode 0)
    (menu-bar-mode 0)
    (add-hook 'dired-mode-hook
	      (lambda () (dired-hide-details-mode)))
    (if (not alcipir/custom-interface-mode)
	(set-fringe-style nil)
      (set-fringe-mode 25))))

(defun alcipir/init ()
  "Initialize alcipir's setup."
  (alcipir/define-custom-modes)
  (alcipir/configure-package-manager)
  (alcipir/configure-user-interface)
  (alcipir/configure-user-experience)
  (alcipir/configure-programming-languages))

(alcipir/init)

(provide 'alcipir)
;;; alcipir.el ends here

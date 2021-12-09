;; Initial configuration para ambos Linux and Windows
(setq custom-file "~/.emacs.d/settings/customInitial.el")
(load custom-file)

;; Paquetes 
(setq custom-file "~/.emacs.d/plugins/packages.el")
(load custom-file)


;;Ajustamos nuestras configuraciones dependiendo de nuestro sistema operativo.
(if (eq system-type 'windows-nt)
    (progn
      ;; (message "Estas es un system Windows!")
      ;; (setq custom-file "~/.emacs.d/initFileEmacs/customMeWindows.el")
      ;; (load custom-file)
      )
  )

(if (eq system-type 'gnu/linux)
    (progn
      ;;(message "Estas es un system Linux!")
      (setq custom-file "~/.emacs.d/settings/customLinux.el")    
      (load custom-file)
      (setq custom-file "~/.emacs.d/settings/customFacesLinux.el")
      (load custom-file)
      )
  )

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/dijkstra-theme/")
(load-theme 'dijkstra t)
;;(load-theme 'dijkstra-dark-blue t) ;; I like this theme

(if  (eq (car custom-enabled-themes) 'dijkstra)
    (progn
      (custom-set-faces
       ;;`(default ((t (:foreground "#F6F3E8" :weight semibold)))) ;; Mas blanco
       )
      ;;(message "hola mundo")
      ;;(add-hook 'prog-mode-hook 'linum-mode)
      (global-set-key [remap goto-line] 'goto-line-with-feedback)
      ;;(add-hook 'prog-mode-hook 'display-line-numbers-mode)
      )
  )

(provide 'init)

;;; init.el ends here

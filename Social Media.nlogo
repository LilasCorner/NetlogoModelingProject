;; Code framework borrowed from NetLogo's Language Change model.
;; TO-DO: Lots. Lots and lots.

breed [users user] ;; Plural followed by singular; for ease of referring to nodes in code.

users-own [ ;; Internal variables that nodes possess.
  following ;; List of nodes that the node in question is following.
  follower ;; List of nodes following the node in question.
  preference ;; List of variables (floats? integers? TBD) that describe a node's preferences.
]

;;
;; [SETUP PROCEDURES]
;;

to setup
  clear-all ;; Clear canvas.
  set-default-shape users "circle" ;; Make all nodes circular.
  ask patches [set pcolor gray] ;; Make background gray.
  repeat num-users [make-initial-user] ;; Make 'num-users' number of nodes.
  create-network ;; Create network between nodes.

  reset-ticks ;; Resets tick counter.
end

;; Create beginning nodes, and initialize its variables.
to make-user
  create-users 1 [
  ;; TO-DO: Include instructions for creation of nodes.

  rt random-float 360 ;; Rotate randomly...
  fd 10 ;; ...and move forward some number of units.
  set size 2 ;; Sets size of node.
  create-network
  ]
end

;; Create initial networks.
to create-network
  ;; TO-DO: Read documentation and learn how to create edges between nodes.
end

;;
;; [GO PROCEDURES]
;;

;; Node adds connection.
to follow
  ;; TO-DO: Read documentation to learn how to add edges in graph.
end

;; Node removes connection.
to unfollow
  ;; TO-DO: Read documentation to learn how to remove edges in graph.
end

;; Node updates preferences.
to update-preferences
  ;; TO-DO: Define preferences with variables and figure out desired way to update preferences.
end

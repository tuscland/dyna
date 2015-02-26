(in-package :cl-user)
(defpackage dyna.column
  (:use :cl
        :annot.class
        :dyna)
  (:import-from :closer-mop
                :validate-superclass
                :standard-direct-slot-definition
                :direct-slot-definition-class
                :class-direct-slots
                :slot-definition-name))
(in-package :dyna.column)

(syntax:use-syntax :annot)

@export
@export-accessors
(defclass <dyna-table-column> (standard-direct-slot-definition)
  ((key-type :type :keyword :initarg :key-type :accessor key-type)
   (attr-name :type string :initarg :attr-name :accessor attr-name)))
;domain for blocks world problem without a gripper (hand that moves the blocks around)

(define (domain blocks_world)

;remove requirements that are not needed
(:requirements :strips :typing)

(:types 
block - object
)

;predicates are the facts that are true or false in the system
;these can be parameterised or object specific
;1)if a block is on another -> block on b1 b2: b1 is on b2
;2)if a block is clear (ie nothing on top)
;3)if a block is on the table
(:predicates 
(on ?b1 ?b2 - block)
(clear ?b - block)
(ontable ?b - block)
)

;all the actions that can happen in the domain
;put a block(b1) on another block(b2) by lifting it from another block(b3)
(:action put_on_block_from_block
    :parameters (?b1 ?b2 ?b3 - block)
    :precondition (and (clear ?b1) (clear ?b2) (on ?b1 ?b3) )
    :effect (and (on ?b1 ?b2) (clear ?b1) (not (on ?b1 ?b3)))
)
;put a block(b1) from table on another block(b2) 
(:action put_on_block_from_table
    :parameters (?b1 ?b2 - block)
    :precondition (and (clear ?b1) (clear ?b2) (ontable ?b1))
    :effect (and 
        (on ?b1 ?b2)
        (not (ontable ?b1))
        (not (clear ?b2))
        (clear ?b1))
)
;put a block b1 on table from a block b2
(:action put_on_table_from_block
    :parameters (?b1 ?b2 - block)
    :precondition(and (clear ?b1) (on ?b1 ?b2))
    :effect (and 
        (ontable ?b1)
        (clear ?b2)
        (not(on ?b1 ?b2)))
)
)
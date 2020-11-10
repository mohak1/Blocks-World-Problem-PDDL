(define (problem block_without_gripper) (:domain blocks_world)
(:objects A B C - block
)

(:init
    (ontable B)
    (clear B)
    (ontable A)
    (on C A)
    (clear C)
)

(:goal (and
    (ontable C)
    (on B C)
    (on A B)
    (clear A)
    )
)

)

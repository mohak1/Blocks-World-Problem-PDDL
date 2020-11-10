# Blocks-World-Problem-PDDL

Blocks world is a popular automated planning problem of box rearrangement in a fully observable and deterministic environment where the initial state has a random arrangement of 'n' different boxes (A, B, C, etc) and the final state is a desired arrangement of these boxes. The aim is to determine an ordered set of valid actions such that the initial state can be transformed to the final state on application of these actions in the specified order. There is a fixed set of actions available that can be applied in the environment to get a certain outcome. Each action has its preconditions and a set of outcomes (i.e. add-effects and delete-effects).

The PDDL domain file describes the types of objects present in the environment and the predicates that describe the state of these objects. It also contains the available actions and the preconditions attached to each of them, along with their effects in the environment.

The PDDL problem file models the state of the world at the initial state using the predicates and object types from the domain file. It also describes the state of the objects in the desired final state. 

A planner is fed with these domain and problem files and it searches for a suitable ordered set of actions from the initial state to the final state.

The online planner present at: http://editor.planning.domains/ was used for solving this problem.

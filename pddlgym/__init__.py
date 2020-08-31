"""Gym environment registration"""

from . import tests

import matplotlib
# matplotlib.use("Agg")
from pddlgym.rendering import *
from gym.envs.registration import register

import os

def register_pddl_env(name, is_test_env, other_args):
    dir_path = os.path.join(os.path.dirname(os.path.realpath(__file__)), "pddl")
    domain_file = os.path.join(dir_path, "{}.pddl".format(name.lower()))
    gym_name = name.capitalize()
    problem_dirname = name.lower()
    if is_test_env:
        gym_name += 'Test'
        problem_dirname += '_test'
    problem_dir = os.path.join(dir_path, problem_dirname)

    try:
        register(
            id='PDDLEnv{}-v0'.format(gym_name),
            entry_point='pddlgym.core:PDDLEnv',
            kwargs=dict({'domain_file' : domain_file, 'problem_dir' : problem_dir,
                        **other_args}),
        )
    except ValueError:
        pass

for env_name, kwargs in [
        ("gripper", {}),
        ("sokoban", {'render' : sokoban_render}),
        ("depot", {}),
        ("blocks", {'render' : blocks_render}),
        ("doors", {'render' : doors_render}),
        ("hanoi", {'render' : hanoi_render}),
        ("hanoi_operator_actions", {'render' : hanoi_render}),
        ("tsp", {'render' : tsp_render}),
        ("tsp_operator_actions", {'render' : tsp_render}),
        ("elevator", {}),
        ("ferry", {}),

]:
    other_args = {
        'operators_as_actions' : True,
        'dynamic_action_space' : True,
        "raise_error_on_invalid_action": False,
        "shape_reward_mode": None,
    }
    kwargs.update(other_args)
    for is_test in [False, True]:
        register_pddl_env(env_name, is_test, kwargs)

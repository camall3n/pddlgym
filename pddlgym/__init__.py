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

def register_ipc_env(name, other_args):
    dir_path = os.path.join(os.path.dirname(os.path.realpath(__file__)), "ipc-strips", name)
    domain_file = os.path.join(dir_path, "domain.pddl".format(name.lower()))
    gym_name = name.capitalize()
    problem_dir = dir_path

    try:
        register(
            id='PDDLEnv-IPC-{}-v0'.format(gym_name),
            entry_point='pddlgym.core:PDDLEnv',
            kwargs=dict({'domain_file' : domain_file, 'problem_dir' : problem_dir,
                        **other_args}),
        )
    except ValueError as e:
        print(e)
        pass

def register_generated_env(name, other_args):
    dir_path = os.path.join(os.path.dirname(os.path.realpath(__file__)), "generated-pddl", name)
    domain_file = os.path.join(dir_path, "domain.pddl".format(name.lower()))
    gym_name = name.capitalize()
    problem_dir = dir_path

    try:
        register(
            id='PDDLEnv-Gen-{}-v0'.format(gym_name),
            entry_point='pddlgym.core:PDDLEnv',
            kwargs=dict({'domain_file' : domain_file, 'problem_dir' : problem_dir,
                        **other_args}),
        )
    except ValueError as e:
        print(e)
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

for env_name in [
    'barman-sat14-strips',
    'blocks',
    'childsnack-sat14-strips',
    'depot',
    'driverlog',
    'freecell',
    'grid',
    'gripper',
    'hiking-sat14-strips',
    'logistics00',
    'logistics98',
    'miconic',
    'movie',
    'mprime',
    'mystery',
    'pipesworld-notankage',
    'pipesworld-tankage',
    'rovers',
    'satellite',
    'snake-sat18-strips',
    'storage',
    'termes-sat18-strips',
    'thoughtful-sat14-strips',
    'tidybot-sat11-strips',
    'tpp',
    'visitall-sat11-strips',
    'visitall-sat14-strips',
    'zenotravel',
]:
    other_args = {
        'operators_as_actions' : True,
        'dynamic_action_space' : True,
        "raise_error_on_invalid_action": False,
        "shape_reward_mode": None,
    }
    register_ipc_env(env_name, other_args)

for env_name in [
    'depot',
    'doors',
    'ferry',
    'gripper',
    'hanoi',
    'miconic',
]:
    other_args = {
        'operators_as_actions' : True,
        'dynamic_action_space' : True,
        "raise_error_on_invalid_action": False,
        "shape_reward_mode": None,
    }
    register_generated_env(env_name, other_args)
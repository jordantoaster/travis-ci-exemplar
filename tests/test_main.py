import pytest
import numpy as np
from src.main import main

def test_random_sample_type():
    assert type(main()) == np.ndarray
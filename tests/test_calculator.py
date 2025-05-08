import pytest
from calculator.calculator import add

def test_add():
    """Test the add function with various inputs."""
    assert add(1, 2) == 3
    assert add(-1, 1) == 0
    assert add(0, 0) == 0

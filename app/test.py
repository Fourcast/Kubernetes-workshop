import pytest
from main import app
def test_func_fast():
    pass

def test_response():
    """Start with a blank database."""
    client = app.test_client()
    rv = client.get('/')
    assert b'Hello World' in rv.data
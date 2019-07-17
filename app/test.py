import pytest
from hello import app
def test_func_fast():
    pass

def test_response():
    """Start with a blank database."""
    client = app.test_client()
    rv = client.get('/')
    assert b'Hello from Kubernetes!' in rv.data
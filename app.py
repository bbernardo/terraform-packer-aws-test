import hug

@hug.get()
def weather():
    """Returns Its a sunny day to a user"""
    return { "message": "It\'s a sunny day" }

hug.API(__name__).http.serve(port=3000)

"""Event database module"""
from django.db import models

class Event(models.Model):
    """Event database model"""
    gamer = models.ForeignKey("Gamer", on_delete=models.CASCADE)
    day = models.DateField(auto_now=False, auto_now_add=False)
    time = models.TimeField(auto_now=False, auto_now_add=False)
    location = models.CharField(max_length=75)
    game = models.ForeignKey("Game", on_delete=models.CASCADE)
    description = models.CharField(max_length=100)

    @property
    def joined(self):
        return self.__joined

    @joined.setter
    def joined(self, value):
        self.__joined = value
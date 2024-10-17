from django.db import models

from django.db import models

class UserAssessment(models.Model):
    # Define your fields here
    name = models.CharField(max_length=100)
    score = models.IntegerField()

    def __str__(self):
        return self.name

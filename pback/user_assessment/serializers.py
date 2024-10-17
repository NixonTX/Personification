from rest_framework import serializers
from .models import UserAssessment  # Example model

class UserAssessmentSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserAssessment
        fields = '__all__'

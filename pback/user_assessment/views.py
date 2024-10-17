from django.shortcuts import render
from rest_framework import viewsets
from .models import UserAssessment
from .serializers import UserAssessmentSerializer

class UserAssessmentViewSet(viewsets.ModelViewSet):
    queryset = UserAssessment.objects.all()
    serializer_class = UserAssessmentSerializer

from rest_framework import status
from rest_framework.response import Response
from rest_framework.views import APIView
from django.contrib.auth import authenticate, logout
from django.utils.translation import gettext_lazy as _
from rest_framework.authtoken.models import Token
from .models import CustomUser
from .serializers import UserSerializer, LoginSerializer
from django.http import JsonResponse
from rest_framework.decorators import api_view, permission_classes
from rest_framework.permissions import IsAuthenticated

class SignUpView(APIView):
    def post(self, request):
        serializer = UserSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response({"message": "User created successfully"}, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

class LoginView(APIView):
    def post(self, request):
        serializer = LoginSerializer(data=request.data)
        if serializer.is_valid():
            username = serializer.validated_data['username']
            password = serializer.validated_data['password']
            print(f"Trying to authenticate user: {username}")  # Debugging line
            user = authenticate(username=username, password=password)
            if user is not None:
                token, created = Token.objects.get_or_create(user=user)
                return Response({"message": "Login successful", "token": token.key}, status=status.HTTP_200_OK)
            print("Authentication failed.")  # Debugging line
            return Response({"error": _("Invalid credentials")}, status=status.HTTP_401_UNAUTHORIZED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['POST'])
@permission_classes([IsAuthenticated])  # Ensure the user is authenticated
def logout_view(request):
    request.user.auth_token.delete()  # Delete the user's token
    return JsonResponse({'message': 'Logged out successfully.'})

from rest_framework import serializers
from user.models import CustomUser

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = CustomUser
        fields = ['full_name', 'username', 'email', 'password', 'phone_number']
        extra_kwargs = {'password': {'write_only': True}}

    def create(self, validated_data):
        user = CustomUser(**validated_data)
        user.set_password(validated_data['password'])  # Hash the password
        user.save()
        return user

# class LoginSerializer(serializers.Serializer):
#     username = serializers.CharField(required=True)
#     password = serializers.CharField(required=True)

# serializers.py
from django.contrib.auth import authenticate

class LoginSerializer(serializers.Serializer):
    username = serializers.CharField()  # Can be used for username or email
    password = serializers.CharField()

    def validate(self, attrs):
        username = attrs.get('username')
        password = attrs.get('password')

        if username and password:
            # Check if the input is an email
            if '@' in username:
                # If it's an email, get the user by email
                user = CustomUser.objects.filter(email=username).first()
                if user:
                    username = user.username  # Use the username for authentication
                else:
                    raise serializers.ValidationError("Invalid credentials")

            # Authenticate with the username and password
            user = authenticate(username=username, password=password)
            if user is None:
                raise serializers.ValidationError("Invalid credentials")
        else:
            raise serializers.ValidationError("Must include username and password")

        attrs['user'] = user  # Store the user object for further use
        return attrs

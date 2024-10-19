from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/', include('user_assessment.urls')),
    path('user_assessment/', include('user_assessment.urls')),
    path('user/', include('user.urls')),
    path('api/user/', include('user.urls')),
]

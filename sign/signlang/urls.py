from django.urls import path
from .views import *

urlpatterns = [
    path('api/progress/<int:student_id>/', LearningProgressAPIView.as_view(), name='progress'),
    path('media/upload-video/', VideoUploadView.as_view(), name='upload-video'),
    path('media/videos/', VideoListView.as_view(), name='video_list'),
    path('media/videos/<int:pk>/', VideoDetailView.as_view(), name='video_detail'),
]

"""student_dropout URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.conf.urls import url,include
from login import views

urlpatterns = [
    path('admin/', admin.site.urls),
    url('login/',include('login.url')),
    url('parent/',include('parent.url')),
    # url('prediction/', include('prediction.url'),
    url('teacher/',include('teacher.url')),
    url('assigned_class/',include('assigned_class.url')),
    url('attendance/',include('attendance.url')),
    url('extra_activity/',include('extra_activity.url')),
    url('student/',include('student.url')),
    url('classes/',include('classes.url')),
    url('temp/',include('temp.url')),
    url('result/', include('result.url')),
    url('subject/',include('subject.url')),
    url('internal/',include('internal_mark.url')),
    url('$',views.login)

]

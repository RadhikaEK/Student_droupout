from django.conf.urls import url
from teacher import views

urlpatterns=[
    url('teacher/',views.teacher),
    url('teacher_vw/',views.teacher_view),
    url('te_delete/(?P<idd>\w+)',views.te_delete, name='te_delete'),
    # url('te_reject/(?P<idd>\w+)', views.te_reject, name='te_reject'),
    url('te_update/(?P<idd>\w+)', views.te_update, name='te_update'),
    url('update/', views.update_profile)

]
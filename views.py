from django.http import HttpResponseRedirect
from django.shortcuts import render
from teacher.models import Teacher
from login.models import Login

# Create your views here.
def teacher(request):
    if request.method=='POST':
        obj=Teacher()
        obj.name=request.POST.get('n1')
        obj.password=request.POST.get('pass')
        obj.email= request.POST.get('em')
        obj.address= request.POST.get('ad')
        obj.phone=request.POST.get('p1')
        obj.qualification=request.POST.get('q1')
        obj.save()

        ob=Login()
        ob.username=request.POST.get('n1')
        ob.password=request.POST.get('pass')
        ob.type='teacher'
        ob.u_id=obj.t_id
        ob.save()
    return render(request,'teacher/teacher_reg.html')

def teacher_view(request):
    obj=Teacher.objects.all()
    context={
        'x':obj
    }
    return render(request,'teacher/teacher_view.html',context)

# def te_approve(request,idd):
#     obj=Teacher.objects.get(t_id=idd)
#     obj.status='approved'
#     obj.save()
#     return teacher_view(request)

# def te_reject(request,idd):
#     obj=Teacher.objects.get(t_id=idd)
#     obj.status='rejected'
#     obj.save()
#     return teacher_view(request)

def te_update(request,idd):
    obj=Teacher.objects.get(t_id=idd)
    context={
        'x':obj
    }

    if request.method=="POST":
        obj=Teacher.objects.get(t_id=idd)
        obj.name = request.POST.get('n1')
        obj.email = request.POST.get('em')
        obj.address = request.POST.get('ad')
        obj.phone = request.POST.get('p1')
        obj.qualification = request.POST.get('q1')
        obj.save()
        return HttpResponseRedirect('/teacher/teacher_view/')
    return render(request,'teacher/teacher_update.html',context)


def update_profile(request):
    obj=Teacher.objects.all()
    context={
        'x':obj
    }
    return render(request,'teacher/update_profile.html',context)


def te_delete(request,idd):
    obj=Teacher.objects.get(t_id=idd).delete()
    return teacher_view(request)


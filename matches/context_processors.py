from .models import Bet
from accounts.models import Notification


def sections_processor(request):
    Sbets = Bet.objects.all().order_by('-date')[:5]
    cnt_notifcats = 0
    if request.user.is_authenticated:
        cnt_notifcats = Notification.objects.filter(user=request.user, is_seen=False).count()
    return {'Sbets': Sbets, 'cnt_notifcats': cnt_notifcats}

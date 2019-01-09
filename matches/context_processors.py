from .models import Bet


def sections_processor(request):
    Sbets = Bet.objects.all().order_by('-date')[:5]
    return {'Sbets': Sbets}

from django.contrib import admin
from django.apps import apps


@admin.register(apps.get_model('habits', 'Habit'))
class HabitAdmin(admin.ModelAdmin):
    list_display = (
        'id', 'autor', 'title', 'place',
        'duration', 'time_action', 'action', 'prize',
        'is_pleasant', 'last_performed', 'execution_interval_day',
        'related', 'is_public',
    )
    search_fields = ('id', 'autor', 'title', 'is_public',)
    list_filter = ('id', 'autor', 'title', 'is_public',)

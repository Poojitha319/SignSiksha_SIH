# Generated by Django 4.2.10 on 2024-09-15 06:33

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Alphabet',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('letter', models.CharField(max_length=2)),
                ('sign_language_image', models.ImageField(upload_to='sign_language/alphabet/')),
                ('explanation', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='MathExercise',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('question', models.CharField(max_length=255)),
                ('correct_answer', models.CharField(max_length=100)),
                ('explanation', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='Number',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('number', models.IntegerField()),
                ('sign_language_image', models.ImageField(upload_to='sign_language/numbers/')),
                ('explanation', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='Word',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('gujarati_word', models.CharField(max_length=100)),
                ('sign_language_video', models.FileField(upload_to='sign_language/words/')),
                ('explanation', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='UserProfile',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('user_type', models.CharField(choices=[('student', 'Student'), ('teacher', 'Teacher'), ('parent', 'Parent'), ('hr', 'HR')], max_length=10)),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='ScienceLesson',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=255)),
                ('sign_language_video', models.FileField(upload_to='sign_language/science/')),
                ('content', models.TextField()),
                ('exercises', models.ManyToManyField(blank=True, to='signlang.mathexercise')),
            ],
        ),
        migrations.CreateModel(
            name='LearningProgress',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('lesson_type', models.CharField(max_length=50)),
                ('lesson_name', models.CharField(max_length=255)),
                ('progress', models.DecimalField(decimal_places=2, default=0.0, max_digits=5)),
                ('completed_at', models.DateTimeField(blank=True, null=True)),
                ('student', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='signlang.userprofile')),
            ],
        ),
    ]

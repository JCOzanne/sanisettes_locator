"""URL routes for the locator app."""

from __future__ import annotations

from django.urls import path

from .views import HomeView, MapView, NearbySanisettesView

urlpatterns = [
    path("", HomeView.as_view(), name="home"),
    path("map/", MapView.as_view(), name="map"),
    path("api/nearby-sanisettes/", NearbySanisettesView.as_view(), name="nearby_sanisettes"),
]

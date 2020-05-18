@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">users</div>

                <div class="panel-body">
                    <a href="{{ url('/users') }}">Liste des utilisateurs</a><br><br>
                    <a href="#">Ajouter un utilisateurs</a><br><br><br><br>
                </div>
            </div>
        </div>

        <div class="col-md-4 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">Bon de Livraison</div>

                <div class="panel-body">
                    <a href="{{ url('/users') }}">Liste des Fournisseurs</a><br><br>
                    <a href="{{ url('/users') }}">Liste des BL</a><br><br>
                    <a href="#">Ajouter un BL</a><br><br>
                </div>
            </div>
        </div>

        <div class="col-md-4 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">Bon de fournitures</div>

                <div class="panel-body">
                    <a href="{{ url('/users') }}">Liste des bureaux</a><br><br>
                    <a href="{{ url('/users') }}">Liste des BF</a><br><br>
                    <a href="#">Ajouter un BF</a><br><br>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

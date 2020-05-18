@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">

            <h1 class="text-center" style="margin:20px">Controle des Utilisateurs</h1>

            <table class="table table-responsive">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Role</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($users as $user)
                    <tr>
                        <td>{{ $user->id }}</td>
                        <td>{{ $user->name }}</td>
                        <td>{{ $user->email }}</td>
                        <td>
                            @if(Auth::user()->role == 2 || $user->id == 1)
                            <b>Disabled</b>
                            @else
                            <div class="form-group">
                                <form method="post"  action="/update_role/{{$user->id}}">
                                    {{csrf_field()}}
                                    <select class="form-control" name="role" onchange="this.form.submit()">
                                        <option value="3" {{($user->role)==3?'selected':null}}>Admin</option>
                                        <option value="2" {{($user->role)==2?'selected':null}}>Service</option>
                                        <option value="1" {{($user->role)==1?'selected':null}}>Magasinier</option>
                                        <option value="0" {{($user->role)==0?'selected':null}}>non valide</option>
                                    </select>
                                </form>
                            </div>
                            @endif
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
            
            

        </div>
    </div>
</div>
@endsection

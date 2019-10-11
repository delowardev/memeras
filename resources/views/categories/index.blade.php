@extends('layouts.app')
@section('content')
    <div class="container">
        @if($errors->any())
        <div class="row">
            <div class="col-12">
                <div class="alert alert-danger">
                    <ul>
                        @foreach($errors->all() as $error)
                            <li>{{$error}}</li>
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
        @endif
        <div class="row">
            <div class="col-md-4">
                <form action="{{'/categories'}}" method="POST">
                    @csrf
                    <h4>Add new terms</h4>
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" name="name" placeholder="Name">
                        <p><i class="small">The name is how it appears on your site.</i></p>
                    </div>
                    <div class="form-group">
                        <label for="slug">Slug</label>
                        <input type="text" class="form-control" name="slug" placeholder="Slug">
                        <p><i class="small">The “slug” is the URL-friendly version of the name. It is usually all lowercase and contains only letters, numbers, and hyphens.</i></p>
                    </div>
                    <div class="form-group">
                        <label for="description">Description (optional)</label>
                        <textarea name="description" class="form-control"></textarea>
                        <p class="small"><i>The description is not prominent by default; however, some themes may show it.</i></p>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary">Add category</button>
                    </div>
                </form>
            </div>
            <div class="col-md-8">
                <form action="#">
                    <h2>All Categories</h2>
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th scope="col">
                                <input type="checkbox" name="all">
                            </th>
                            <th scope="col">Name</th>
                            <th scope="col">Slug</th>
                            <th scope="col">Count</th>
                        </tr>
                        </thead>
                        <tbody>
                        @if (count($category->all()) !== 0)
                            @foreach($category->all() as $cat)
                                <tr>
                                    <td>
                                        <input type="checkbox" name="{{$cat->slug}}">
                                    </td>
                                    <td><a href="{{url('/categories/'.$cat->id.'/edit')}}">{{$cat->name}}</a></td>
                                    <td>{{$cat->slug}}</td>
                                    <td>4</td>
                                </tr>
                            @endforeach
                        @endif
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </div>
@endsection

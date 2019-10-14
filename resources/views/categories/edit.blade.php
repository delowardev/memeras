@extends('layout.app')
@section('content')
    <div class="pt-5 pb-5">
        <div class="container">
            <form action="{{'/categories/'. $category->id}}" method="POST">
                @method('PATCH')
                @csrf
                <h4>Edit Categories</h4>
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" value="{{$category->name}}" class="form-control" name="name" placeholder="Name">
                    <p class="text-muted pt-1"><i class="small">The name is how it appears on your site.</i></p>
                </div>
                <div class="form-group">
                    <label for="slug">Slug</label>
                    <input type="text" value="{{$category->slug}}" class="form-control" name="slug" placeholder="Slug">
                    <p class="text-muted pt-1"><i class="small">The “slug” is the URL-friendly version of the name. It is usually all lowercase and contains only letters, numbers, and hyphens.</i></p>
                </div>
                <div class="form-group">
                    <label for="description">Description (optional)</label>
                    <textarea name="description" class="form-control">{{$category->description}}</textarea>
                    <p class="text-muted pt-1"><i class="small">The description is not prominent by default; however, some themes may show it.</i></p>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Update category</button>
                </div>
            </form>
            <form onSubmit="return confirm('Is the form filled out correctly?')" action="{{'/categories/'. $category->id}}" method="POST">
                @method('DELETE')
                @csrf
                <button type="submit" class="btn btn-danger">Delete</button>
            </form>
        </div>
    </div>
@endsection

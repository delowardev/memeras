@extends('layout.app')
@section('content')
    <section class="create-post-section">
        <div class="container">
            @if($errors->any())
                <div class="row">
                    <div class="col-12">
                        <div class="alert alert-danger" role="alert">
                            <ul class="m-0">
                                @foreach($errors->all() as $error)
                                    <li>{{$error}}</li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            @endif
            <form action="{{url('/posts')}}" method="POST">
                @csrf
                <div class="row">
                    <div class="col-3">
                        <div class="input-row">
                            @if($category->all() !== 0)
                                <label for="category">Category</label>
                                <select class="select-2 form-control form-control-lg" name="category" id="category">
                                    <option selected value="">Uncategorized</option>
                                    @foreach($category->all() as $cat)
                                        <option value="{{$cat->id}}">{{$cat->name}}</option>
                                    @endforeach
                                </select>
                            @endif
                        </div>
                    </div>
                    <div class="col-9">
                        <div class="input-row">
                            <label for="title">Post title <span class="required-star">*</span></label>
                            <input type="text" class="form-control form-control-lg" name="title" id="title" placeholder="Post title">
                        </div>
                        <div class="input-row">
                            <label for="content">Post content <span class="required-star">*</span></label>
                            <textarea name="content" class="form-control form-control-lg" id="content" rows="6" placeholder="Post content"></textarea>
                        </div>
                        <div class="btn-group-lg text-right">
                            <input type="submit" class="btn btn-primary pl-4 pr-4 mr-2" value="Publish Now">
                            <input type="submit" class="btn btn-success pl-4 pr-4" value="Save as draft">
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>
@endsection

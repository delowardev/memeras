@extends('layout.app')
@section('content')
    <section class="create-post-section">
        <div class="container">
            <form action="{{url('/posts')}}">
                @csrf
                @method('POST')
                <div class="row">
                    <div class="col-3">
                        <div class="input-row">
                            <label for="category">Category</label>
                            <select class="select-2" name="category" id="category">
                                <option value="cat0">Uncategorized</option>
                                <option value="cat1">HTML</option>
                                <option value="cat2">WordPress</option>
                            </select>
                        </div>
                        <div class="input-row">
                            <label for="category">Tags</label>
                            <select class="select-2" multiple name="tags" id="tags">
                                <option value="cat0">Uncategorized</option>
                                <option value="cat1">HTML</option>
                                <option value="cat2">WordPress</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-9">
                        <div class="input-row">
                            <label for="title">Post title <span class="required-star">*</span></label>
                            <input type="text" name="title" id="title" placeholder="Post title">
                        </div>
                        <div class="input-row">
                            <label for="content">Post content <span class="required-star">*</span></label>
                            <textarea name="summernote" id="content" placeholder="Post content"></textarea>
                        </div>
                        <div class="input-row">
                            <button class="primary" type="submit">Post Comment</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>
@endsection

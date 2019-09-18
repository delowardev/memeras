@extends('layout.app')
@section('content')
    <section class="post-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-10">
                    @if(count($posts) !== 0)
                        @foreach ($posts as $post)
                            <article class="single-post-item">
                                <div class="row">
                                    <div class="col-8">
                                        <div class="post-item-inner">
                                            <a href="{{url('posts/'.$post->id)}}" class="post-item-date" rel="bookmark">
                                                <time class="entry-date published" datetime="2018-12-09T20:04:36+00:00">December 9, 2018</time>
                                                <time class="updated" datetime="2018-12-09T20:05:27+00:00">December 9, 2018</time>
                                            </a>
                                            <span class="post-item-author">
                                            &nbsp;by
                                            <a href="#" class="post-item-author-link">
                                                {{$post->user->name}}
                                            </a>
                                        </span>

                                            <h2 class="post-item-title">
                                                <a href="{{url('posts/'.$post->id)}}">{{$post->title}}</a>
                                            </h2>
                                            <div class="post-item-content">
                                                {{Str::words($post->content, 35)}} <a class="post-item-readmore" href="{{url('posts/'.$post->id)}}">Continue reading...</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="post-thumbnail">
                                            <img src="https://picsum.photos/id/{{$post->id}}/350/350" alt="">
                                        </div>
                                    </div>
                                </div>
                            </article>
                        @endforeach
                    @else
                        Hello empty
                    @endif
                </div>
            </div>
        </div>
    </section>
@endsection

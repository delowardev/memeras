@extends('layout.app')
@section('content')
    <div class="container">
        <article class="single-post">
            <div class="post-thumbnail">
                <img src="https://picsum.photos/id/147/1150/550" alt="">
            </div>

            <div class="row justify-content-center">
                <div class="col-8">
                    <div class="post-item-inner">
                        <a href="{{url('posts/'.$post->id)}}" class="post-item-date" rel="bookmark">
                            <time class="entry-date published" datetime="2018-12-09T20:04:36+00:00">December 9, 2018</time>
                            <time class="updated" datetime="2018-12-09T20:05:27+00:00">December 9, 2018</time>
                        </a>
                        <h2 class="post-item-title">
                            <span href="{{url('posts/'.$post->id)}}">{{$post->title}}</span>
                        </h2>
                        <div class="post-item-content">
                            {{$post->content}}
                        </div>
                    </div>
                    <div class="single-post-social-share post-meta-segment">
                        <h5 class="post-meta-segment-title">Share this</h5>
                        <ul>
                            <li><a href="#">Facebook</a></li>
                            <li><a href="#">Twitter</a></li>
                            <li><a href="#">Instagram</a></li>
                            <li><a href="#">More</a></li>
                        </ul>
                    </div>
                    <div class="single-post-related post-meta-segment">
                        <h5 class="post-meta-segment-title">Related post</h5>
                        <div class="row">
                            <div class="col-4">
                                <div class="releated-post-item">
                                    <h4 class="releated-post-heading"><a href="#">Lorem ipsum dolor sit.</a></h4>
                                    <a href="{{url('posts/'.$post->id)}}" class="post-item-date" rel="bookmark">
                                        <time class="entry-date published" datetime="2018-12-09T20:04:36+00:00">December 9, 2018</time>
                                        <time class="updated" datetime="2018-12-09T20:05:27+00:00">December 9, 2018</time>
                                    </a>
                                    <span class="post-item-author">
                                        <a href="#">in WordPress</a>
                                    </span>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="releated-post-item">
                                    <h4 class="releated-post-heading"><a href="#">Lorem ipsum dolor sit.</a></h4>
                                    <a href="{{url('posts/'.$post->id)}}" class="post-item-date" rel="bookmark">
                                        <time class="entry-date published" datetime="2018-12-09T20:04:36+00:00">December 9, 2018</time>
                                        <time class="updated" datetime="2018-12-09T20:05:27+00:00">December 9, 2018</time>
                                    </a>
                                    <span class="post-item-author">
                                        <a href="#">in WordPress</a>
                                    </span>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="releated-post-item">
                                    <h4 class="releated-post-heading"><a href="#">Lorem ipsum dolor sit.</a></h4>
                                    <a href="{{url('posts/'.$post->id)}}" class="post-item-date" rel="bookmark">
                                        <time class="entry-date published" datetime="2018-12-09T20:04:36+00:00">December 9, 2018</time>
                                        <time class="updated" datetime="2018-12-09T20:05:27+00:00">December 9, 2018</time>
                                    </a>
                                    <span class="post-item-author">
                                        <a href="#">in WordPress</a>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="single-post-author-info">
                        <div class="row align-items-center">
                            <div class="col-auto">
                                <img src="https://picsum.photos/id/147/90" alt="">
                            </div>
                            <div class="col">
                                <h6 class="post-author-published-by">Published by</h6>
                                <h5 class="post-author-name">{{$post->user->name}}</h5>
                                <a class="post-author-link" href="#">View all posts by {{$post->user->name}}</a>
                            </div>
                        </div>
                    </div>

                    <div class="single-post-taxonomy post-meta-segment">
                        <ul class="single-post-category">
                            <li><i class="fas fa-folder"></i></li>
                            <li><a href="#">WordPress</a></li>
                            <li><a href="#">Plugin</a></li>
                            <li><a href="#">Monster</a></li>
                        </ul>
                        <ul class="single-post-tags">
                            <li><i class="fas fa-tags"></i></li>
                            <li><a href="#">WordPress</a></li>
                            <li><a href="#">Plugin</a></li>
                            <li><a href="#">Monster</a></li>
                        </ul>
                    </div>

                    @include('posts.comment')

                </div>
            </div>

        </article>
    </div>
@endsection

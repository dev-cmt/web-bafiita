<x-app-layout>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Edit Blog & News</h4>
                    <a href="{{ route('blog.index') }}" class="btn btn-sm btn-primary">
                        <i class="fa fa-reply"></i> <span class="btn-icon-add"></span>Back
                    </a>
                </div>
                <div class="card-body">
                    <div class="form-validation">
                        @if (session()->has('success'))
                            <strong class="text-success">{{ session()->get('success') }}</strong>
                        @endif
                        <form action="{{ route('blog.update', $blog->id) }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-lg-6 col-form-label">Title</label>
                                        <div class="col-lg-6">
                                            <input type="text" name="title" id="title" value="{{ old('title', $blog->title) }}" class="form-control @error('title') is-invalid @enderror" required>
                                            @error('title')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                            @enderror
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-lg-6 col-form-label">Status</label>
                                        <div class="col-lg-6">
                                            <select name="status" id="status" class="form-control @error('status') is-invalid @enderror">
                                                <option value="published" {{ $blog->status == 'published' ? 'selected' : '' }}>Published</option>
                                                <option value="draft" {{ $blog->status == 'draft' ? 'selected' : '' }}>Draft</option>
                                            </select>
                                            @error('status')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                            @enderror
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="mt-4">
                                <textarea name="content" id="content">{{ old('content', $blog->content) }}</textarea>
                            </div>
                            
                            <button type="submit" class="btn btn-primary mt-4">Update Post</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    @push('script')
    <!-- Include Editor -->
    <script src="{{ asset('public/backend/tinymce/tinymce.min.js') }}"></script>

    <script>
        tinymce.init({
            selector: 'textarea#content',
            // width: 1000,
            height: 300,
            plugins:[
                'advlist', 'autolink', 'link', 'image', 'lists', 'charmap', 'prewiew', 'anchor', 'pagebreak',
                'searchreplace', 'wordcount', 'visualblocks', 'code', 'fullscreen', 'insertdatetime', 'media', 
                'table', 'emoticons', 'template', 'codesample'
            ],
            toolbar: 'undo redo | styles | bold italic underline | alignleft aligncenter alignright alignjustify |' + 
            'bullist numlist outdent indent | link image | print preview media fullscreen | ' +
            'forecolor backcolor emoticons',
            menu: {
                favs: {title: 'Menu', items: 'code visualaid | searchreplace | emoticons'}
            },
            menubar: 'favs file edit view insert format tools table',
            content_style: 'body{font-family:Helvetica,Arial,sans-serif; font-size:16px}'
        });
    </script>
    
    @endpush
</x-app-layout>
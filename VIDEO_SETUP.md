# Adding Your Demo Video "potato-ai"

## Option 1: YouTube Upload (Recommended)
1. Upload your "potato-ai" video to YouTube
2. Get the video ID from the URL (e.g., `dQw4w9WgXcQ` from `https://youtube.com/watch?v=dQw4w9WgXcQ`)
3. Replace the placeholder in `demo.qmd`:

```html
<iframe width="100%" height="400" 
        src="https://www.youtube.com/embed/YOUR_VIDEO_ID" 
        title="Potato Disease Detection Demo - potato-ai" 
        frameborder="0" 
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
        allowfullscreen>
</iframe>
```

## Option 2: Local Video File
1. Place your `potato-ai.mp4` file in the project root
2. Replace the placeholder in `demo.qmd`:

```html
<video width="100%" controls poster="video-thumbnail.jpg">
  <source src="potato-ai.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>
```

## Option 3: Cloud Storage Link
Upload to Google Drive, Dropbox, or similar and create a direct link:

```markdown
🎬 **[Watch Demo: potato-ai](https://your-cloud-link.com/potato-ai.mp4)**
```

## After Adding Video
Run these commands to update your site:
```bash
quarto render
quarto publish gh-pages --no-prompt
```

## Video Specs Recommendation
- **Format**: MP4 (H.264)
- **Resolution**: 720p or 1080p
- **Length**: 2-5 minutes
- **Content**: Show complete workflow from upload to results
- **Audio**: Optional narration explaining each step

## What to Show in "potato-ai"
1. Opening the React app
2. Drag & drop or selecting an image
3. Upload processing animation
4. Results display with disease classification
5. Confidence score explanation
6. Testing different types of images (healthy, early blight, late blight)
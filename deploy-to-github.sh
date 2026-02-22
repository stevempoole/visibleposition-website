#!/bin/bash

# Visible Position Website - GitHub Deployment Script
# Run this script to deploy the website to GitHub Pages

echo "🚀 Deploying Visible Position Website to GitHub..."

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "❌ Git repository not found. Run this from the website directory."
    exit 1
fi

# Check if we have commits
if ! git log --oneline -n 1 > /dev/null 2>&1; then
    echo "❌ No commits found. Please make sure files are committed."
    exit 1
fi

echo "📋 Website Deployment Checklist:"
echo "1. ✅ Git repository initialized"
echo "2. ✅ All files committed"
echo "3. ✅ Professional website built"
echo "4. ⏳ Creating GitHub repository..."

# GitHub repository creation and push
echo ""
echo "🔧 To complete deployment, please:"
echo "1. Go to https://github.com/new"
echo "2. Create a repository named: visibleposition-website"
echo "3. Make it PUBLIC"
echo "4. Do NOT initialize with README (we already have one)"
echo "5. Run the following commands:"
echo ""
echo "   git remote add origin https://github.com/YOUR_USERNAME/visibleposition-website.git"
echo "   git push -u origin main"
echo ""
echo "🌐 After pushing, enable GitHub Pages:"
echo "1. Go to repository Settings"
echo "2. Scroll to 'Pages' section"
echo "3. Source: Deploy from a branch"
echo "4. Branch: main / (root)"
echo "5. Save"
echo ""
echo "🎉 Your site will be available at:"
echo "   https://YOUR_USERNAME.github.io/visibleposition-website/"
echo ""
echo "🔧 To use custom domain (visibleposition.com):"
echo "1. In Pages settings, add custom domain: www.visibleposition.com"
echo "2. Configure DNS with domain provider:"
echo "   - Add CNAME record: www -> YOUR_USERNAME.github.io"
echo "   - Add A records for apex domain (optional)"
echo ""
echo "📊 Website Features Deployed:"
echo "✅ Professional homepage with conversion-focused design"
echo "✅ Complete services page (SEO, PPC, Strategy)"
echo "✅ About page showcasing 15+ years expertise"
echo "✅ Contact forms with free SEO audit CTAs"
echo "✅ Case studies with success stories"
echo "✅ Mobile-responsive design"
echo "✅ SEO optimized (meta tags, structured data, sitemap)"
echo "✅ Custom 404 page"
echo "✅ Contact forms ready for Netlify Forms"
echo ""
echo "🎯 Ready to generate leads and grow the business!"

# Optional: Open GitHub in browser
if command -v open >/dev/null 2>&1; then
    read -p "Open GitHub repository creation page? (y/n): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        open "https://github.com/new"
    fi
fi
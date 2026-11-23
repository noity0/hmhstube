# Contributing to hmhstube

We love your input! We want to make contributing to hmhstube as easy and transparent as possible, whether it's:

- Reporting a bug
- Discussing the current state of the code
- Submitting a fix
- Proposing new features
- Becoming a maintainer

## Table of Contents

1. [Our Philosophy](#our-philosophy)
2. [Getting Started](#getting-started)
3. [Development Workflow](#development-workflow)
4. [Code Style](#code-style)
5. [Submitting Changes](#submitting-changes)
6. [Reporting Bugs](#reporting-bugs)
7. [Requesting Features](#requesting-features)
8. [License](#license)
9. [Acknowledgments](#acknowledgments)

## Our Philosophy

- **Minimalism**: Keep the code simple and maintainable
- **Performance**: Optimize for speed and efficiency
- **User Experience**: Focus on intuitive interfaces
- **Accessibility**: Ensure the app works for everyone
- **Open Source**: Welcome contributions and feedback

## Getting Started

1. **Fork** the repository on GitHub
2. **Clone** your fork locally
   ```bash
   git clone https://github.com/YOUR_USERNAME/hmhstube.git
   cd hmhstube
   ```
3. **Set up** your development environment
   ```bash
   # No dependencies needed beyond Node.js for the server
   node --version  # Should be v14 or higher
   ```
4. **Start** the local server
   ```bash
   node serve.js
   ```
5. **Open** `http://127.0.0.1:8087/` in your browser

## Development Workflow

### 1. Create a Branch

Create a new branch for your feature or bug fix:

```bash
git checkout -b feature/your-feature-name
# or
git checkout -b fix/your-bug-fix
```

### 2. Make Your Changes

- Follow the [Code Style](#code-style) guidelines
- Test your changes thoroughly
- Ensure all existing functionality still works
- Add comments for complex logic

### 3. Test Your Changes

- Test in multiple browsers (Chrome, Firefox, Safari, Edge)
- Test on mobile devices if possible
- Test both local server and direct file access
- Verify API calls work correctly

### 4. Commit Your Changes

Write clear, concise commit messages:

```bash
git add .
git commit -m "Add feature: new download button"
# or
git commit -m "Fix: resolve error 153 in mobile browsers"
```

### 5. Push and Create a Pull Request

```bash
git push origin feature/your-feature-name
```

Then create a pull request on GitHub with:
- Clear title
- Detailed description
- Screenshots if applicable
- Any breaking changes noted

## Code Style

### HTML Structure
- Use semantic HTML5 tags
- Keep classes consistent with existing code
- Add comments for complex sections
- Use proper indentation (2 spaces)

### CSS Styling
- Follow the existing CSS custom properties
- Use the established color scheme
- Keep media queries organized
- Add comments for complex styles

### JavaScript Code
- Use ES6+ features
- Follow the existing code patterns
- Add JSDoc comments for functions
- Use meaningful variable names
- Keep functions small and focused

### File Organization
- Keep the single-file architecture
- Organize code in logical sections
- Add clear section comments
- Minimize external dependencies

## Submitting Changes

### Pull Request Guidelines

1. **Title**: Clear and descriptive
   - Use `[Feature]`, `[Fix]`, `[Docs]`, or `[Refactor]` prefix
   - Be specific about what the change does

2. **Description**: Provide context
   - Why is this change needed?
   - What problem does it solve?
   - How does it improve the project?

3. **Code Changes**: Explain your changes
   - What did you change and why?
   - Are there any breaking changes?
   - Did you add any new dependencies?

4. **Testing**: Show it works
   - Screenshots of the changes
   - Test results if applicable
   - Browser compatibility notes

### Review Process

1. All PRs are reviewed by maintainers
2. Changes may be requested before approval
3. PRs will be merged once approved
4. Commits will be squashed if needed

## Reporting Bugs

### Bug Reports

Use the [Bug Report template](../ISSUE_TEMPLATE/bug_report.md) when creating issues:

1. **Describe the bug clearly**
   - What is happening vs. what should happen?
   - Is it reproducible?

2. **Steps to reproduce**
   - Clear, step-by-step instructions
   - Include any special conditions

3. **Expected behavior**
   - What should happen instead?

4. **Screenshots/Context**
   - Include screenshots if helpful
   - Browser and OS information

### Bug Report Checklist

- [ ] I have read the [README.md](../README.md)
- [ ] I have searched existing issues
- [ ] I have provided a minimal reproduction case
- [ ] I have included browser and OS information

## Requesting Features

### Feature Requests

Use the [Feature Request template](../ISSUE_TEMPLATE/feature_request.md):

1. **Describe the feature**
   - What would you like to see?
   - Why is it useful?

2. **Provide context**
   - How would it improve the project?
   - Are there similar features elsewhere?

3. **Implementation ideas**
   - How might it be implemented?
   - Any potential challenges?

### Feature Request Checklist

- [ ] I have read the [README.md](../README.md)
- [ ] I have searched existing issues
- [ ] I have provided clear use cases
- [ ] I have considered implementation complexity

## License

By contributing, you agree that your contributions will be licensed under the [MIT License](../LICENSE).

## Acknowledgments

- Thanks to all contributors for their time and effort
- Special thanks to the YouTube API for enabling this project
- Inspired by the open-source community

---

Happy coding! 🎉
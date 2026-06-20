import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:library_app/core/theme/app_colors.dart';
import 'package:go_router/go_router.dart';
import 'package:library_app/features/books/data/book_repository.dart';
import 'package:library_app/features/books/domain/book_model.dart';

class BookCatalogPage extends ConsumerStatefulWidget {
  const BookCatalogPage({super.key});

  @override
  ConsumerState<BookCatalogPage> createState() => _BookCatalogPageState();
}

class _BookCatalogPageState extends ConsumerState<BookCatalogPage> {
  int _selectedCategoryIndex = 0;
  final List<String> _categories = ['All', 'Fiction', 'Science', 'History', 'Technology', 'Art'];

  @override
  Widget build(BuildContext context) {
    final booksAsyncValue = ref.watch(booksProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.onSurface),
          onPressed: () {
            if (context.canPop()) {
              context.pop();
            } else {
              context.go('/member');
            }
          },
        ),
        title: const Text(
          'Book Catalog',
          style: TextStyle(
            color: AppColors.onSurface,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list, color: AppColors.onSurface),
            onPressed: () {
              // Open filter bottom sheet
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search by title, author, or ISBN',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: AppColors.surfaceContainerLowest,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
              ),
            ),
          ),
          
          // Categories
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              itemCount: _categories.length,
              itemBuilder: (context, index) {
                final isSelected = _selectedCategoryIndex == index;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: FilterChip(
                    label: Text(_categories[index]),
                    selected: isSelected,
                    onSelected: (bool selected) {
                      setState(() {
                        _selectedCategoryIndex = index;
                      });
                    },
                    selectedColor: AppColors.primaryContainer,
                    labelStyle: TextStyle(
                      color: isSelected ? AppColors.onPrimaryContainer : AppColors.onSurface,
                      fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                    ),
                    backgroundColor: AppColors.surfaceContainerLowest,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    side: BorderSide(
                      color: isSelected ? Colors.transparent : AppColors.outlineVariant,
                    ),
                  ),
                );
              },
            ),
          ),
          
          const SizedBox(height: 8),
          
          // Books Grid
          Expanded(
            child: booksAsyncValue.when(
              data: (books) {
                if (books.isEmpty) {
                  return const Center(child: Text('No books available.'));
                }
                return GridView.builder(
                  padding: const EdgeInsets.all(16.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.65,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemCount: books.length,
                  itemBuilder: (context, index) {
                    final book = books[index];
                    return _buildCatalogBookCard(book);
                  },
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(child: Text('Error: $error')),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCatalogBookCard(BookModel book) {
    // Alternate availability for demo
    final isAvailable = book.stock > 0;
    
    return InkWell(
      onTap: () {
        // Navigate to book details
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.surfaceVariant,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: const Center(child: Icon(Icons.image, color: AppColors.outline, size: 40)),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            book.title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: AppColors.onSurface,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Text(
            book.author ?? 'Unknown Author',
            style: const TextStyle(
              color: AppColors.onSurfaceVariant,
              fontSize: 12,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isAvailable ? AppColors.tertiary : AppColors.error,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                isAvailable ? 'Available' : 'Borrowed',
                style: TextStyle(
                  color: isAvailable ? AppColors.tertiary : AppColors.error,
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

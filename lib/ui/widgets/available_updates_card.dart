import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:revanced_manager/ui/widgets/application_item.dart';
import 'package:revanced_manager/ui/widgets/patch_text_button.dart';

class AvailableUpdatesCard extends StatelessWidget {
  const AvailableUpdatesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xff1B222B),
      ),
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              I18nText(
                'availableUpdatesCard.widgetTitle',
                child: Text(
                  '',
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    color: const Color(0xff7792BA),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              PatchTextButton(
                text: FlutterI18n.translate(
                  context,
                  'availableUpdatesCard.patchButton',
                ),
                onPressed: () {},
                backgroundColor: const Color(0xff7792BA),
              ),
            ],
          ),
          ApplicationItem(
            asset: 'assets/images/revanced.svg',
            name: 'ReVanced',
            releaseDate: '2 days ago',
            onPressed: () {},
          ),
          ApplicationItem(
            asset: 'assets/images/reddit.png',
            name: 'ReReddit',
            releaseDate: 'Released 1 month ago',
            onPressed: () {},
          ),
          const SizedBox(height: 4),
          I18nText(
            'availableUpdatesCard.changelogLabel',
            child: Text(
              '',
              style: GoogleFonts.roboto(
                color: const Color(0xff8691A0),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'fix: we made the player even worse (you love)',
            style: GoogleFonts.roboto(
              color: const Color(0xff8691A0),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'chore: guhhughghu',
            style: GoogleFonts.roboto(
              color: const Color(0xff8691A0),
            ),
          ),
        ],
      ),
    );
  }
}
